import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/business/business.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/models/street/street.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';

import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'package:traffic_solution_dsc/presentation/widgets/locationText_widget.dart';

// ignore: must_be_immutable
class AddStreetSegment extends StatefulWidget {
  AddStreetSegment(
      {super.key, this.streetSegment, this.store, required this.street});
  StreetSegment? streetSegment;
  Store? store;
  Street street;

  @override
  _AddStreetSegmentState createState() => _AddStreetSegmentState();
}

enum SingingCharacter { from, to }

class _AddStreetSegmentState extends State<AddStreetSegment> {
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

// created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
    });
    Position currentPosition = await Geolocator.getCurrentPosition();

    source = LatLng(currentPosition.latitude, currentPosition.longitude);
    return currentPosition;
  }

  Set<Marker> markers = {};
  Future<void> moveCamera(CameraPosition camera) async {
    try {
      final GoogleMapController controller = await _controller.future;
      controller.moveCamera(CameraUpdate.newCameraPosition(camera));
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
  List<Store> stores = [];
  LatLng source = LatLng(0, 0);
  LatLng destination = LatLng(0, 0);
  String sourceText = 'Your location';
  String destinationText = "Choose destination";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserCurrentLocation();
    getIcon();
    WidgetsBinding.instance.endOfFrame.then((value) async {
      getUserCurrentLocation();
      getIcon().whenComplete(() {
        setState(() {
          if (widget.streetSegment != null) {
            startLatitudeController.text =
                widget.streetSegment!.StartLat!.toStringAsFixed(5);
            startLongitudeController.text =
                widget.streetSegment!.StartLng!.toStringAsFixed(5);
            endLatitudeController.text =
                widget.streetSegment!.EndLat!.toStringAsFixed(5);
            endLongitudeController.text =
                widget.streetSegment!.EndLng!.toStringAsFixed(5);

            moveCamera(CameraPosition(
                target:
                    LatLng(widget.store!.latitude!, widget.store!.longitude!),
                zoom: 18));
            storeNameController.text = widget.store!.name ?? '';

            startStoreNear = widget.store;
            endStoreNear = widget.store;
            startMarker = Marker(
                markerId: MarkerId('start'),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueYellow),
                position: LatLng(widget.streetSegment!.StartLat!,
                    widget.streetSegment!.StartLng!),
                onTap: () {
                  print("Hello");
                });
            markers.add(startMarker!);

            endMarker = Marker(
                markerId: MarkerId('end'),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueYellow),
                position: LatLng(widget.streetSegment!.EndLat!,
                    widget.streetSegment!.EndLng!),
                onTap: () {
                  print("Hello");
                });
            markers.add(endMarker!);
            drawerPolyline();
          }
        });
      });

      // context.read<HomeCubit>().getCameraPostion(_pVNUDorm);
      final GoogleMapsFlutterPlatform mapsImplementation =
          GoogleMapsFlutterPlatform.instance;
      if (mapsImplementation is GoogleMapsFlutterAndroid) {
        mapsImplementation.useAndroidViewSurface = true;
        initializeMapRenderer();
      }
    });
  }

  TextEditingController startLongitudeController = TextEditingController();
  TextEditingController startLatitudeController = TextEditingController();
  TextEditingController endLongitudeController = TextEditingController();
  TextEditingController endLatitudeController = TextEditingController();
  TextEditingController storeNameController = TextEditingController();

  Store? startStoreNear;
  Store? endStoreNear;
  Marker? startMarker;
  Marker? endMarker;
  late BitmapDescriptor enableStoreIcon;
  late BitmapDescriptor selectedStoreIcon;
  late BitmapDescriptor disableStoreIcon;

  SingingCharacter? selectPick = SingingCharacter.from;

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
    markers.add(Marker(
        markerId: MarkerId(e.id!),
        position: LatLng(e.latitude!, e.longitude!),
        icon: (e.status ?? true) ? enableStoreIcon : disableStoreIcon,
        infoWindow: InfoWindow(title: e.name!),
        onTap: () {
          print("Hello");
        }));
  }

  @override
  Widget build(BuildContext context) {
// make sure to initialize before map loading
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    child: Column(
                      children: [
                        LocationTextField(
                          title: 'Store Name:',
                          nameController: storeNameController,
                          isName: true,
                          isEnable: false,
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Expanded(
                              child: LocationTextField(
                                  title: 'From:',
                                  isEnable: false,
                                  latitudeController: startLatitudeController,
                                  longitudeController:
                                      startLongitudeController),
                            ),
                            Radio(
                                value: SingingCharacter.from,
                                groupValue: selectPick,
                                onChanged: (value) {
                                  setState(() {
                                    selectPick = value;
                                  });
                                  print(value); //selected value
                                })
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Expanded(
                              child: LocationTextField(
                                  isEnable: false,
                                  title: 'To:',
                                  latitudeController: endLatitudeController,
                                  longitudeController: endLongitudeController),
                            ),
                            Radio(
                                value: SingingCharacter.to,
                                groupValue: selectPick,
                                onChanged: (value) {
                                  setState(() {
                                    selectPick = value;
                                  });
                                  print(value); //selected value
                                })
                          ],
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 20,
                    child: InkWell(
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(360)),
                            color: Color.fromARGB(255, 148, 226, 58),
                          ),
                          child:
                              Icon(Icons.check, size: 25, color: Colors.white)),
                      onTap: () async {
                        try {
                          List<Polyline> polyline = _polylines
                              .where((element) =>
                                  element.polylineId.value == 'line')
                              .toList();
                          if (polyline.isNotEmpty) {
                            DocumentReference streetSegmentDoc =
                                FirebaseFirestore.instance
                                    .collection('streetsegments')
                                    .doc();
                            bool status = true;
                            if (widget.streetSegment != null) {
                              streetSegmentDoc = FirebaseFirestore.instance
                                  .collection('streetsegments')
                                  .doc(widget.streetSegment!.id);
                            }
                            StreetSegment report = StreetSegment(
                                id: streetSegmentDoc.id,
                                StartLat: polyline.first.points.first.latitude,
                                StartLng: polyline.first.points.first.longitude,
                                EndLat:
                                    polyline.first.points.elementAt(1).latitude,
                                EndLng: polyline.first.points
                                    .elementAt(1)
                                    .longitude,
                                status: status,
                                streetId: widget.street.id,
                                storeId: startStoreNear!.id);
                            final json = report.toJson();

                            await streetSegmentDoc.set(json).whenComplete(() {
                              Navigator.of(context).pop();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(widget.streetSegment != null
                                    ? 'Update Street Segment success'
                                    : 'Add Street Segment success'),
                                backgroundColor: Colors.green,
                              ));
                            });
                          } else {}
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Check input location!!!'),
                            backgroundColor: Colors.red,
                          ));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            StreamBuilder<List<Store>>(
                stream: FireBaseDataBase.readStores(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Something went wrong! ${snapshot.error}'),
                    );
                  } else if (snapshot.hasData) {
                    stores = snapshot.data!;
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
                              if (widget.streetSegment != null) {
                                if (e.id == widget.streetSegment!.id) return;
                              }
                              _polylines.add(Polyline(
                                polylineId: PolylineId(e.id.toString()),
                                points: [
                                  LatLng(e.StartLat!, e.StartLng!),
                                  LatLng(e.EndLat!, e.EndLng!)
                                ],
                                color: Colors.green,
                              ));
                            });

                            return Expanded(
                                child: GoogleMap(
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
                                Store? store = checkAllStoreNear(value);
                                storeNameController.text = '';
                                setState(() {
                                  _polylines.removeWhere((element) =>
                                      element.polylineId.value == 'line');
                                  if (selectPick == SingingCharacter.from) {
                                    startLatitudeController.text =
                                        value.latitude.toStringAsFixed(5);
                                    startLongitudeController.text =
                                        value.longitude.toStringAsFixed(5);
                                    startMarker = Marker(
                                        markerId: MarkerId('start'),
                                        icon: BitmapDescriptor
                                            .defaultMarkerWithHue(
                                                BitmapDescriptor.hueYellow),
                                        position: value,
                                        onTap: () {
                                          print("Hello");
                                        });
                                    markers.add(startMarker!);
                                    startStoreNear = store;
                                    if (store != null) {
                                      drawerPolyline();
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                            'Pick location must near a store!!!'),
                                        backgroundColor: Colors.red,
                                      ));
                                    }
                                  }
                                  if (selectPick == SingingCharacter.to) {
                                    endLatitudeController.text =
                                        value.latitude.toStringAsFixed(5);
                                    endLongitudeController.text =
                                        value.longitude.toStringAsFixed(5);
                                    endMarker = Marker(
                                        markerId: MarkerId('end'),
                                        icon: BitmapDescriptor
                                            .defaultMarkerWithHue(
                                                BitmapDescriptor.hueYellow),
                                        position: value,
                                        onTap: () {
                                          print("Hello");
                                        });
                                    markers.add(endMarker!);
                                    endStoreNear = store;
                                    if (store != null) {
                                      drawerPolyline();
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                            'Pick location must near a store!!!'),
                                        backgroundColor: Colors.red,
                                      ));
                                    }
                                  }

                                  // latitudeController.text =
                                  //     value.latitude.toStringAsFixed(3);
                                  // longitudeController.text =
                                  //     value.longitude.toStringAsFixed(3);
                                  // _pickMarker = Marker(
                                  //     markerId: MarkerId('start'),
                                  //     icon: selectedStoreIcon,
                                  //     position: value,
                                  //     onTap: () {
                                  //       print("Hello");
                                  //     });
                                  // markers.add(_pickMarker!);
                                  // context
                                  //     .read<HomeCubit>()
                                  //     .getPlaceNear(value)
                                  //     .then((result) {
                                  //   addressController.text = result.locationSelected!
                                  //           .results!.first.address ??
                                  //       '';
                                  // });
                                });
                              },
                            ));
                          } else {
                            return Center(child: CircularProgressIndicator());
                          }
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ],
        ),
      ),
    );
  }

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
      zoomLevel = 16;
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

  void drawerPolyline() {
    if (startMarker != null && endMarker != null) {
      if (startStoreNear != null &&
          endStoreNear != null &&
          startStoreNear!.id == endStoreNear!.id) {
        storeNameController.text = startStoreNear!.name ?? '';
        _polylines.add(Polyline(
            polylineId: PolylineId('line'),
            color: Colors.yellow,
            points: [startMarker!.position, endMarker!.position]));
      } else if (startStoreNear != null &&
          endStoreNear != null &&
          startStoreNear!.id != endStoreNear!.id) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Start Point and End Point need near only a store!!!'),
          backgroundColor: Colors.red,
        ));
      }
    }
  }

  Store? checkAllStoreNear(LatLng tapPoint) {
    Store? results;
    stores.forEach((element) {
      if (checkStoreNear(
          LatLng(element.latitude ?? 0, element.longitude ?? 0), tapPoint)) {
        //results = element.polylineId.value;
        results = element;
        return;
      }
    });
    return results;
  }

  bool checkStoreNear(LatLng tapPoint, LatLng storePoint) {
    double distance = 1000 *
        distanceBetweenLatLng(storePoint.latitude, storePoint.longitude,
            tapPoint.latitude, tapPoint.longitude);

    if (distance <= 10.0) {
      return true;
    } else {
      // Handle the case when the tap is outside the 100-meter radius
      return false;
    }
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
