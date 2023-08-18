import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/presentation/screens/lineChartScreen.dart';
import 'package:traffic_solution_dsc/services/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:place_picker/place_picker.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';

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

  static const CameraPosition _kBVNUDorm = CameraPosition(
    target: LatLng(10.882495758523962, 106.78255494069631),
    zoom: 16,
  );
  @override
  void initState() {
    super.initState();
  }

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

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(310.882495758523962, 106.78255494069631),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
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
              Expanded(
                child: GooglePlaceAutoCompleteTextField(
                  textEditingController: searchControl,
                  googleAPIKey: "AIzaSyD_6AN4CVrPSkr3iWDVzO-rtuccuq6jgaM",
                  inputDecoration: InputDecoration(),
                  debounceTime: 800, // default 600 ms,
                  countries: ["in", "fr"], // optional by default null is set
                  isLatLngRequired:
                      true, // if you required coordinates from place detail
                  getPlaceDetailWithLatLng: (Prediction prediction) {
                    // this method will return latlng with place detail
                    print("placeDetails" + prediction.lng.toString());
                  }, // this callback is called when isLatLngRequired is true
                  itemClick: (Prediction prediction) {
                    searchControl.text = prediction.description ?? '';
                    searchControl.selection = TextSelection.fromPosition(
                        TextPosition(offset: prediction.description!.length));
                  },
                  // if we want to make custom list item builder
                  itemBuilder: (context, index, Prediction prediction) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 7,
                          ),
                          Expanded(
                              child: Text("${prediction.description ?? ""}"))
                        ],
                      ),
                    );
                  },
                  // if you want to add seperator between list items
                  seperatedBuilder: Divider(),
                  // want to show close icon
                  isCrossBtnShown: true,
                ),
              ),
              ElevatedButton(
                child: Icon(Icons.search),
                onPressed: () {
                  LocationService.getPlace(searchControl.text);
                },
              )
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kBVNUDorm,
              markers: {_kGooglePlexMarker, _kLakeMarker},
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              tiltGesturesEnabled: true,
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              indoorViewEnabled: true,
              trafficEnabled: true,
              fortyFiveDegreeImageryEnabled: true,
              //polygons: {_kPolygon},
              onTap: (value) {
                print(value);
                Random r = Random(5);
                showPlacePicker(value);
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

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  void showPlacePicker(LatLng value) async {
    await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PlacePicker(
              "AIzaSyD_6AN4CVrPSkr3iWDVzO-rtuccuq6jgaM",
              displayLocation: value,
            )));
  }
}
