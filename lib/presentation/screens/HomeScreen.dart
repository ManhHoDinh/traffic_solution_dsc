import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/constraints/GlobalString.dart';
import 'package:traffic_solution_dsc/presentation/screens/lineChartScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/cubit/search_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/searchSreen.dart';
import 'package:traffic_solution_dsc/services/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:place_picker/place_picker.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

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

  static const LatLng _pVNUDorm = LatLng(15.834257, 108.149133);
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
  // static final Polygon _kPolygon = Polygon(
  //     polygonId: PolygonId('_kpolygon'),
  //     points: [
  //       LatLng(37.43296265331129, -122.08832357078792),
  //       LatLng(37.42796133580664, -122.085749655962),
  //       LatLng(37.41296265331129, -122.092),
  //       LatLng(37.45, -122.092),
  //     ],
  //     strokeWidth: 5);
  TextEditingController searchControl = TextEditingController();
  List<LatLng> polylineCoordinates = [];
  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        GlobalString.GoogleAPIKey,
        PointLatLng(_pVNUDorm.latitude, _pVNUDorm.longitude),
        PointLatLng(_pUIT.latitude, _pUIT.longitude));
    if (result.points.isNotEmpty) {
      print("Hello");
      result.points.forEach((element) {
        polylineCoordinates.add(LatLng(element.latitude, element.longitude));
      });
    }
    print("Hello");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPolyPoints();
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
                onTap: () {
                  LocationService.route();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => BlocProvider(
                            create: (context) => SearchCubit(),
                            child: SearchScreen(),
                          )));
                },
              )),
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kBVNUDorm,
              markers: {
                Marker(markerId: MarkerId('KTX khu B'), position: _pVNUDorm),
                Marker(markerId: MarkerId('UIT'), position: _pUIT),
              },
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
                    points: polylineCoordinates,
                    color: Colors.blue)
              },
              onTap: (value) {
                print(value);
                Random r = Random(5);
                showPlacePicker(LatLng(10.870251224876043, 106.80337596158505));
              },
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     getUserCurrentLocation().then((value) async {
      //       print(value.latitude.toString() + " " + value.longitude.toString());

      //       // marker added for current users location

      //       // specified current users location
      //       CameraPosition cameraPosition = new CameraPosition(
      //         target: LatLng(value.latitude, value.longitude),
      //         zoom: 14,
      //       );

      //       final GoogleMapController controller = await _controller.future;
      //       controller
      //           .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      //       setState(() {});
      //     });
      //   },
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
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
}
