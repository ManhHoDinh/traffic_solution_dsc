import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:traffic_solution_dsc/constraints/GlobalString.dart';
import 'package:traffic_solution_dsc/presentation/screens/Direction/chooseLocation.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/lineChartScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/cubit/search_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/searchSreen.dart';
import 'package:traffic_solution_dsc/services/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:place_picker/place_picker.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:traffic_solution_dsc/models/searchResponse/feature.dart';
import 'package:label_marker/label_marker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
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
  
  static const LatLng _pUIT = LatLng(10.870251224876043, 106.80337596158505);

  static const CameraPosition _kUIT = CameraPosition(
    target: _pUIT,
    zoom: 16,
  );

// created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR" + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  static final Marker _kGooglePlexMarker = Marker(
      markerId: MarkerId('_kGooglePlex'),
      infoWindow: InfoWindow(title: 'Google Plex'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(37.42796133580664, -122.085749655962));
  static final Marker _kLakeMarker = Marker(
      markerId: MarkerId('_kLake'),
      infoWindow: InfoWindow(title: 'Lake Plex'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: LatLng(37.43296265331129, -122.08832357078792));

  Set<Marker> markers = {};
  Future<void> moveCamera(CameraPosition camera) async {
    final GoogleMapController controller = await _controller.future;
    controller.moveCamera(CameraUpdate.newCameraPosition(camera));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeCubit>().getCameraPostion(_pVNUDorm);
    markers.addAll([
      Marker(markerId: MarkerId('KTX khu B'), position: _pVNUDorm),
      Marker(markerId: MarkerId('UIT'), position: _pUIT)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Traffic')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: TextField(
                onTap: () async {
                  var result =
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => BlocProvider(
                                create: (context) => SearchCubit(),
                                child: SearchScreen(),
                              )));
                  try {
                    if (result != null) {
                      Features location = result;
                      LatLng latLng = LatLng(location.center!.elementAt(1),
                          location.center!.first);
                      double screenWidth = MediaQuery.of(context).size.width;

                      markers.addLabelMarker(LabelMarker(
                          label: location.text!,
                          markerId: MarkerId(location.text!),
                          position: latLng,
                          backgroundColor: Colors.green,
                          icon: BitmapDescriptor.defaultMarker));
                      if (location.bbox != null) {
                        List<LatLng> coordinates = [
                          LatLng(location.bbox![1], result.bbox![0]),
                          LatLng(location.bbox![3], result.bbox![2]),
                        ];

                        print(latLng);
                        double zoomLevel = calculateZoomLevel(coordinates);
                        print(zoomLevel);
                        context.read<HomeCubit>().getCameraPostion(latLng);
                        moveCamera(
                            CameraPosition(target: latLng, zoom: zoomLevel));
                      } else {
                        moveCamera(CameraPosition(target: latLng, zoom: 13));
                      }
                    }
                  } catch (e) {}
                },
              )),
            ],
          ),
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) => true,
                builder: (context, state) => state.when(
                    initial: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    loaded: (camera) {
                      return GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: camera,
                        markers: markers,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        tiltGesturesEnabled: true,
                        myLocationButtonEnabled: true,
                        myLocationEnabled: true,
                        indoorViewEnabled: true,
                        trafficEnabled: true,
                        fortyFiveDegreeImageryEnabled: true,
                        polylines: {
                          Polyline(
                              polylineId: PolylineId("Route"),
                              //points: polylineCoordinates,
                              color: Colors.blue)
                        },
                        onTap: (value) {
                          print(value);
                        },
                      );
                    },
                    error: (e) => Center(
                          child: Text(e),
                        ))),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ChooseLocation()));
          },
          child: Icon(Icons.directions)),
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

  void showPlacePicker(LatLng value) async {
    await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PlacePicker(
              GlobalString.GoogleAPIKey,
              displayLocation: value,
            )));
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
      zoomLevel = 15;
    }
    // Trả về tỉ lệ zoom
    return 15;
  }
}
