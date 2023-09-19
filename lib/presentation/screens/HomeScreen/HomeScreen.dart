import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

import 'package:traffic_solution_dsc/core/constraints/status.dart';
import 'package:traffic_solution_dsc/core/helper/assets_helper.dart';
import 'package:traffic_solution_dsc/core/models/placeNear/locations.dart';
import 'package:traffic_solution_dsc/core/models/search/mapbox/feature.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/Direction/SubScreen/DirectionScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/Direction/chooseLocation.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';

import 'package:traffic_solution_dsc/presentation/screens/ReportScreen/reportScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/cubit/search_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/searchSreen.dart';
import 'package:place_picker/place_picker.dart';

import 'package:label_marker/label_marker.dart';
import 'dart:async';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  static Page page() => const MaterialPage<void>(child: HomeScreen());
  @override
  _HomeScreenState createState() => _HomeScreenState();
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (BuildContext context) => HomeCubit(),
        ),
      ],
      child: const HomeScreen(),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MapSample();
  }
}

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const LatLng _pVNUDorm =
      LatLng(10.882495758523962, 106.78255494069631);
  static const CameraPosition _kBVNUDorm = CameraPosition(
    target: _pVNUDorm,
    zoom: 16,
  );
  LatLng defaultLocation = LatLng(0, 0);
  static const LatLng _pUIT = LatLng(10.870251224876043, 106.80337596158505);
  late BitmapDescriptor enableStoreIcon;
  late BitmapDescriptor selectedStoreIcon;
  late BitmapDescriptor disableStoreIcon;
  
Future getIcon() async {
    enableStoreIcon = await createCustomMarkerFromAsset(
        AssetHelper.enableStoreMarkerIcon, // Path to your asset image
        Size(100, 100) // Height of the custom marker
        );
    selectedStoreIcon = await createCustomMarkerFromAsset(
        AssetHelper.selectedStoreMarkerIcon, // Path to your asset image
        Size(100, 100) // Height of the custom marker
        );
    disableStoreIcon = await createCustomMarkerFromAsset(
        AssetHelper.disableStoreMarkerIcon, // Path to your asset image
        Size(100, 100) // Height of the custom marker
        );
  }

  Future<BitmapDescriptor> createCustomMarkerFromAsset(
      String assetName, Size size) async {
    final ByteData byteData = await rootBundle.load(assetName);
    final Uint8List uint8List = byteData.buffer.asUint8List();

    final Codec codec = await instantiateImageCodec(
      uint8List,
      targetHeight: size.height.toInt(),
      targetWidth: size.width.toInt(),
    );
    final FrameInfo frameInfo = await codec.getNextFrame();
    final ByteData? resizedByteData = await frameInfo.image.toByteData(
      format: ImageByteFormat.png,
    );
    final Uint8List resizedUint8List = resizedByteData!.buffer.asUint8List();

    final BitmapDescriptor customIcon =
        BitmapDescriptor.fromBytes(resizedUint8List);
    return customIcon;
  }

  getStoreMarker(Store e) async {
    setState(() {
      markers.add(Marker(
          markerId: MarkerId(e.id!),
          position: LatLng(e.latitude!, e.longitude!),
          icon: (e.status ?? true) ? enableStoreIcon : disableStoreIcon,
          onTap: () {
            print("Hello");
          }));
    });
  }

// created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR" + error.toString());
    });
    Position currentPosition = await Geolocator.getCurrentPosition();

    source = LatLng(currentPosition.latitude, currentPosition.longitude);
    print("Source $source");
    return currentPosition;
  }

  Set<Marker> markers = {};
  Future<void> moveCamera(CameraPosition camera) async {
    try {
      final GoogleMapController controller = await _controller.future;
      // controller.moveCamera(CameraUpdate.newCameraPosition(camera));
      setState(() {
        context.read<HomeCubit>().getCameraPostion(camera.target);
      });
    } catch (e) {}
  }

  bool checkCanRoute() {
    return source != defaultLocation &&
        destination != defaultLocation &&
        source != destination;
  }

  late BitmapDescriptor customIcon;
  Set<Polyline> _polylines = {};
  List<StreetSegment> streetSegments = [];
  LatLng source = LatLng(0, 0);
  LatLng destination = LatLng(0, 0);
  String sourceText = 'Your location';
  String destinationText = "Choose destination";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserCurrentLocation();

    WidgetsBinding.instance.endOfFrame.then((value) async {
      getIcons();
      getUserCurrentLocation();
      context.read<HomeCubit>().getCameraPostion(_pVNUDorm);
      final GoogleMapsFlutterPlatform mapsImplementation =
          GoogleMapsFlutterPlatform.instance;
      if (mapsImplementation is GoogleMapsFlutterAndroid) {
        mapsImplementation.useAndroidViewSurface = true;
        initializeMapRenderer();
      }
    });
  }

  getIcons() async {
    await MarkerIcon.markerFromIcon(Icons.shop, Colors.blue, 100).then((value) {
      markers.addAll([
        Marker(
          markerId: MarkerId('KTX khu B'),
          position: _pVNUDorm,
          icon: value,
        ),
        Marker(markerId: MarkerId('UIT'), position: _pUIT, icon: value)
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
// make sure to initialize before map loading
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  child: Text(
                    'Search here',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
              ),
              onTap: () async {
                var result = await Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => BlocProvider(
                          create: (context) => SearchCubit(),
                          child: SearchScreen(),
                        )));
                try {
                  if (result != null) {
                    Features location = result;
                    LatLng latLng = LatLng(
                        location.center!.elementAt(1), location.center!.first);

                    markers.addLabelMarker(LabelMarker(
                        label: location.text!,
                        markerId: MarkerId(location.text!),
                        position: latLng,
                        backgroundColor: Colors.green,
                        icon: BitmapDescriptor.defaultMarker));
                    //   if (location.bbox != null) {
                    //     List<LatLng> coordinates = [
                    //       LatLng(location.bbox![1], result.bbox![0]),
                    //       LatLng(location.bbox![3], result.bbox![2]),
                    //     ];

                    //     double zoomLevel = calculateZoomLevel(coordinates);
                    //     print(zoomLevel);
                    //     context.read<HomeCubit>().getCameraPostion(latLng);
                    //     moveCamera(
                    //         CameraPosition(target: latLng, zoom: zoomLevel));
                    //   } else {
                    moveCamera(CameraPosition(target: latLng, zoom: 13));
                    //   }
                  }
                } catch (e) {
                  print(e.toString());
                }
              },
            ),
            Expanded(
              child: StreamBuilder<List<Store>>(
                  stream: FireBaseDataBase.readStores(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text('Something went wrong! ${snapshot.error}'),
                      );
                    } else if (snapshot.hasData) {
                       snapshot.data!.forEach((e) {
                      getStoreMarker(e);
                    });
                   
                      return StreamBuilder<List<StreetSegment>>(
                          stream: FireBaseDataBase.readStreetSegment(),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              return Center(
                                child: Text(
                                    'Something went wrong! ${snapshot.error}'),
                              );
                            } else if (snapshot.hasData) {
                              streetSegments = snapshot.data!;
                              snapshot.data!.forEach((e) {
                                _polylines.add(Polyline(
                                  polylineId: PolylineId(e.id.toString()),
                                  points: [
                                    LatLng(e.StartLat!, e.StartLng!),
                                    LatLng(e.EndLat!, e.EndLng!)
                                  ],
                                  color: Colors.green,
                                ));
                              });

                              return GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: _kBVNUDorm,
                                markers: markers,
                                onMapCreated: (GoogleMapController controller) {
                                  if (!_controller.isCompleted) {
                                    //first calling is false
                                    //call "completer()"
                                    _controller.complete(controller);
                                  } else {
                                    //other calling, later is true,
                                    //don't call again completer()
                                  }
                                },
                                trafficEnabled: false,
                                zoomControlsEnabled: true,
                                myLocationEnabled: true,
                                myLocationButtonEnabled: true,
                                polylines: _polylines,
                                onTap: (value) {
                                  setState(() {
                                    String? streetId =
                                        checkAllStreetSegment(value);
                                    context
                                        .read<HomeCubit>()
                                        .getPlaceNear(value)
                                        .then((value) => {
                                              showModalBottomSheet(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    if (value.status ==
                                                        StatusType.loaded) {
                                                      return InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (_) =>
                                                                      ReportScreen(
                                                                        place: value
                                                                            .locationSelected,
                                                                        segmentId:
                                                                            streetId,
                                                                      )));
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                height: 150,
                                                                width: double
                                                                    .infinity,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          15,
                                                                    ),
                                                                    Text(
                                                                      toBeginningOfSentenceCase(value
                                                                              .locationSelected!
                                                                              .results!
                                                                              .first
                                                                              .name) ??
                                                                          '',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              20),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          15,
                                                                    ),
                                                                    Text(toBeginningOfSentenceCase(value
                                                                            .locationSelected!
                                                                            .results!
                                                                            .first
                                                                            .address) ??
                                                                        '')
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                destinationText = toBeginningOfSentenceCase(value
                                                                        .locationSelected!
                                                                        .results!
                                                                        .first
                                                                        .name) ??
                                                                    '';
                                                                Location?
                                                                    location =
                                                                    value
                                                                        .locationSelected!
                                                                        .results!
                                                                        .first
                                                                        .location;
                                                                destination = LatLng(
                                                                    location!
                                                                            .lat ??
                                                                        0,
                                                                    location.lng ??
                                                                        0);

                                                                print(source);
                                                                print(
                                                                    destination);

                                                                if (checkCanRoute())
                                                                  Navigator.of(context).push(MaterialPageRoute(
                                                                      builder: (_) => DirectionScreen.providers(
                                                                          sourceText,
                                                                          source,
                                                                          destinationText,
                                                                          destination)));
                                                                else
                                                                  print(
                                                                      "error");
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            20),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .locationArrow),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                    return Container(
                                                      height: 150,
                                                      width: double.infinity,
                                                    );
                                                  })
                                            });
                                  });
                                },
                              );
                            } else {
                              return Center(child: CircularProgressIndicator());
                            }
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ChooseLocation()));
          },
          child: Icon(Icons.directions)),

      // bottomSheet: BlocBuilder<HomeCubit, HomeState>(
      //   buildWhen: (previous, current) => true,
      //   builder: (context, state) {
      //     if (defaultLocation != LatLng(0, 0)) {
      //       context
      //           .read<HomeCubit>()
      //           .getPlaceNear(state.data!.locationSelected);
      //       return Container(
      //         height: 150,
      //       );
      //     }

      //     return Container(
      //       height: 0,
      //     );
      //   },
      // ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // getUserCurrentLocation().then((value) async {
      //     //   print(value.latitude.toString() + " " + value.longitude.toString());

      //     //   // marker added for current users location

      //     //   // specified current users location
      //     //   CameraPosition cameraPosition = new CameraPosition(
      //     //     target: LatLng(value.latitude, value.longitude),
      //     //     zoom: 14,
      //     //   );

      //     //   final GoogleMapController controller = await _controller.future;
      //     //   controller
      //     //       .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      //     //   setState(() {});
      //     // });
      //   },
      //   label: const Text(''),
      //   icon: const Icon(Icons.directions),
      // ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
//   double calculateDistance(LatLng point1, LatLng point2) {
//   const double earthRadius = 6371; // Earth's radius in kilometers

//   double lat1 = point1.latitude;
//   double lon1 = point1.longitude;
//   double lat2 = point2.latitude;
//   double lon2 = point2.longitude;

//   double dLat = radians(lat2 - lat1);
//   double dLon = radians(lon2 - lon1);

//   double a = sin(dLat / 2) * sin(dLat / 2) +
//       cos(radians(lat1)) * cos(radians(lat2)) * sin(dLon / 2) * sin(dLon / 2);

//   double c = 2 * atan2(sqrt(a), sqrt(1 - a));

//   double distance = earthRadius * c; // Distance in kilometers
//   return distance;
// }

//   void _onTap(LatLng tappedPoint) {
//     double minDistance = double.infinity;

//     // Iterate through the polyline coordinates and calculate the distance
//     for (int i = 0; i < polylineCoordinates.length - 1; i++) {
//       final LatLng point1 = polylineCoordinates[i];
//       final LatLng point2 = polylineCoordinates[i + 1];

//       // Calculate the distance between the clicked point and the polyline segment
//       final double distance = LatLng.distance(tappedPoint, point1, point2);

//       // Check if this distance is smaller than the minimum distance found so far
//       if (distance < minDistance) {
//         minDistance = distance;
//       }
//     }

//     // Define a threshold (in degrees) to consider it a click near the polyline
//     final double clickThreshold = 0.01;

//     if (minDistance < clickThreshold) {
//       // The click is near the polyline
//       print('Clicked near the polyline!');
//     }
//   }

  double calculateZoomLevel(List<LatLng> boundingBox) {
    // Tính toán độ rộng của khu vực theo kinh tuyến
    double width = boundingBox[1].longitude - boundingBox[0].longitude;

    // Tính toán độ cao của khu vực theo vĩ tuyến
    double height = boundingBox[1].latitude - boundingBox[0].latitude;

    // Tính toán tỉ lệ zoom dựa trên độ rộng và độ cao của khu vực
    double zoomLevel = height * width;
    print(zoomLevel);
    zoomLevel = min(max(zoomLevel, 1), 21);

    // Giới hạn tỉ lệ zoom ở mức thấp nhất là 10
    zoomLevel = max(zoomLevel, 10);

    // Nếu diện tích nhỏ, thì zoomLevel phải lớn
    if (height / width < 0.001) {
      zoomLevel = 15;
    }
    // Trả về tỉ lệ zoom
    return 15;
  }

  double degreesToRadians(double degrees) {
    return degrees * (pi / 180.0);
  }

  double distanceBetweenLatLng(
      double lat1, double lng1, double lat2, double lng2) {
    const double earthRadius = 6371; // Earth's radius in kilometers

    double dLat = degreesToRadians(lat2 - lat1);
    double dLng = degreesToRadians(lng2 - lng1);

    double a = sin(dLat / 2) * sin(dLat / 2) +
        cos(degreesToRadians(lat1)) *
            cos(degreesToRadians(lat2)) *
            sin(dLng / 2) *
            sin(dLng / 2);

    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    double distance = earthRadius * c;

    return distance;
  }

  String? checkAllStreetSegment(LatLng position) {
    String? results;
    _polylines.forEach((element) {
      if (checkStreetSegmentNear(
          element.points[0], element.points[1], position)) {
        results = element.polylineId.value;
        return;
      }
    });
    return results;
  }

  bool checkStreetSegmentNear(LatLng A, LatLng B, LatLng C) {
    double radius = distanceBetweenLatLng(
            A.latitude, A.longitude, B.latitude, B.longitude) /
        2;
    double distanceToCenter = distanceBetweenLatLng(C.latitude, C.longitude,
        (A.latitude + B.latitude) / 2, (A.longitude + B.longitude) / 2);
    if (distanceToCenter <= radius) {
      // Điểm C nằm trong vùng bán kính của đường tròn
      return true;
    } else {
      // Điểm C nằm ngoài vùng bán kính của đường tròn
      return false;
    }
  }
}

Completer<AndroidMapRenderer?>? _initializedRendererCompleter;

/// Initializes map renderer to the `latest` renderer type for Android platform.
///
/// The renderer must be requested before creating GoogleMap instances,
/// as the renderer can be initialized only once per application context.
Future<AndroidMapRenderer?> initializeMapRenderer() async {
  if (_initializedRendererCompleter != null) {
    return _initializedRendererCompleter!.future;
  }

  final Completer<AndroidMapRenderer?> completer =
      Completer<AndroidMapRenderer?>();
  _initializedRendererCompleter = completer;

  WidgetsFlutterBinding.ensureInitialized();

  final GoogleMapsFlutterPlatform mapsImplementation =
      GoogleMapsFlutterPlatform.instance;
  if (mapsImplementation is GoogleMapsFlutterAndroid) {
    unawaited(mapsImplementation
        .initializeWithRenderer(AndroidMapRenderer.latest)
        .then((AndroidMapRenderer initializedRenderer) =>
            completer.complete(initializedRenderer)));
  } else {
    completer.complete(null);
  }

  return completer.future;
}
