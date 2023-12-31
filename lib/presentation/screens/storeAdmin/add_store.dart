import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/business/business.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';

import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'package:traffic_solution_dsc/presentation/widgets/locationText_widget.dart';

class AddStore extends StatefulWidget {
  AddStore({super.key, required this.business, this.store});
  Business business;
  Store? store;

  @override
  _AddStoreState createState() => _AddStoreState();
}

class _AddStoreState extends State<AddStore> {
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
      getUserCurrentLocation();
      getIcon().whenComplete(() {
        if (widget.store != null) {
          latitudeController.text = widget.store!.latitude!.toStringAsFixed(7);
          longitudeController.text =
              widget.store!.longitude!.toStringAsFixed(6);
          moveCamera(CameraPosition(
              target: LatLng(widget.store!.latitude!, widget.store!.longitude!),
              zoom: 18));
          addressController.text = widget.store!.address ?? '';
          nameController.text = widget.store!.name ?? '';
          _pickMarker = Marker(
              markerId: MarkerId('start'),
              position:
                  LatLng(widget.store!.latitude!, widget.store!.longitude!),
              icon: selectedStoreIcon,
              onTap: () {
                print("Hello");
              });
          setState(() {
            markers.add(_pickMarker!);
          });
        }
        setState(() {});
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

  TextEditingController longitudeController = TextEditingController();
  TextEditingController latitudeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  Marker? _pickMarker;
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
    if (widget.store != null) {
      if (widget.store!.id == e.id) return;
    }
    markers.add(Marker(
        markerId: MarkerId(e.id!),
        position: LatLng(e.latitude!, e.longitude!),
        icon: (e.status ?? true) ? enableStoreIcon : disableStoreIcon,
        onTap: () {
          print("Hello");
        }));
  }

  void refreshScreen(double inputLat, double inputLong) async {
    {
      await MarkerIcon.markerFromIcon(Icons.shop, Colors.yellow, 100)
          .then((value) {
        _pickMarker = Marker(
            markerId: MarkerId('start'),
            position: LatLng(inputLat, inputLong),
            icon: selectedStoreIcon,
            onTap: () {
              print("Hello");
            });
      });
      markers.add(_pickMarker!);
      moveCamera(CameraPosition(target: LatLng(inputLat, inputLong), zoom: 16));
      String address = '';
      context
          .read<HomeCubit>()
          .getPlaceNear(LatLng(inputLat, inputLong))
          .then((result) {
        address = result.locationSelected!.results!.first.address ?? '';

        // Split the string by commas
        List<String> parts = address.split(',');

        // Check if there are at least 5 parts (0 to 4 are the first 5 parts)
        if (parts.length >= 4) {
          // Join the first 5 parts using commas
          String resultString = parts.sublist(0, 4).join(',');
          addressController.text = resultString;
        } else {
          addressController.text = address;
        }
      });
    }
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
                          title: 'Name:',
                          nameController: nameController,
                          isName: true,
                        ),
                        SizedBox(height: 25),
                        LocationTextField(
                            title: 'Location:',
                            latitudeController: latitudeController,
                            longitudeController: longitudeController),
                        SizedBox(height: 25),
                        LocationTextField(
                          title: 'Address:',
                          nameController: addressController,
                          isAddress: true,
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
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
                          double inputLat =
                              double.parse(latitudeController.text);
                          double inputLong =
                              double.parse(longitudeController.text);

                          if (nameController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Store Name is required'),
                              backgroundColor: Colors.red,
                            ));
                          } else if (_pickMarker == null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'Location and check location picker are required'),
                              backgroundColor: Colors.red,
                            ));
                          } else {
                            DocumentReference storeDoc = FirebaseFirestore
                                .instance
                                .collection('stores')
                                .doc();
                            bool status = true;
                            if (widget.store != null) {
                              storeDoc = FirebaseFirestore.instance
                                  .collection('stores')
                                  .doc(widget.store!.id);
                              status = widget.store!.status ?? true;
                            }
                            Store report = Store(
                                id: storeDoc.id,
                                latitude: _pickMarker!.position.latitude,
                                longitude: _pickMarker!.position.longitude,
                                name: nameController.text,
                                status: status,
                                businessId: widget.business.id,
                                address: addressController.text);
                            final json = report.toJson();

                            await storeDoc.set(json).whenComplete(() {
                              Navigator.of(context).pop();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(widget.store != null
                                    ? 'Update store success'
                                    : 'Add store success'),
                                backgroundColor: Colors.green,
                              ));
                            });
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Check input location!!!'),
                            backgroundColor: Colors.red,
                          ));
                        }
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: InkWell(
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(360)),
                            color: Colors.blueAccent,
                          ),
                          child: Icon(Icons.refresh_outlined,
                              size: 25, color: Colors.white)),
                      onTap: () {
                        try {
                          double inputLat =
                              double.parse(latitudeController.text);
                          double inputLong =
                              double.parse(longitudeController.text);
                          if (_pickMarker != null) {
                            String lat = _pickMarker!.position.latitude
                                .toStringAsFixed(7);
                            String long = _pickMarker!.position.longitude
                                .toStringAsFixed(7);
                            if (lat != latitudeController.text ||
                                longitudeController.text != long) {
                              refreshScreen(inputLat, inputLong);
                            }
                          } else {
                            refreshScreen(inputLat, inputLong);
                          }
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
                    snapshot.data!.forEach((e) {
                      getStoreMarker(e);
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
                          setState(() {
                            latitudeController.text =
                                value.latitude.toStringAsFixed(7);
                            longitudeController.text =
                                value.longitude.toStringAsFixed(7);
                            _pickMarker = Marker(
                                markerId: MarkerId('start'),
                                icon: selectedStoreIcon,
                                position: value,
                                onTap: () {
                                  print("Hello");
                                });
                            markers.add(_pickMarker!);
                            context
                                .read<HomeCubit>()
                                .getPlaceNear(value)
                                .then((result) {
                              addressController.text = result.locationSelected!
                                      .results!.first.address ??
                                  '';
                            });
                          });
                        },
                      ),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })
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
