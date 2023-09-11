import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:traffic_solution_dsc/core/constraints/GlobalString.dart';
import 'package:traffic_solution_dsc/presentation/screens/Direction/SubScreen/cubit/direction_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';
import 'package:traffic_solution_dsc/presentation/widgets/locationChooseWidget.dart';
import 'package:place_picker/place_picker.dart';

class DirectionScreen extends StatefulWidget {
  const DirectionScreen({Key? key}) : super(key: key);

  @override
  _DirectionScreenState createState() => _DirectionScreenState();
  static String? _sourceText;
  static LatLng? _source;
  static String? _destinationText;
  static LatLng? _destination;
  static MultiBlocProvider providers(
      sourceText, source, destinationText, destination) {
    _sourceText = sourceText;
    _source = source;
    _destinationText = destinationText;
    _destination = destination;
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (BuildContext context) => HomeCubit(),
        ),
        BlocProvider<DirectionCubit>(
          create: (BuildContext context) => DirectionCubit(),
        ),
      ],
      child: const DirectionScreen(),
    );
  }
}

class _DirectionScreenState extends State<DirectionScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const LatLng _pVNUDorm =
      LatLng(10.882495758523962, 106.78255494069631);

  static const LatLng _pUIT = LatLng(10.870251224876043, 106.80337596158505);

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

  Set<Marker> markers = {};
  Future<void> moveCamera(CameraPosition camera) async {
    final GoogleMapController controller = await _controller.future;
    controller.moveCamera(CameraUpdate.newCameraPosition(camera));
  }

  LatLng defaultLatLng = LatLng(0, 0);
  void GetDirection() async {
    context.read<DirectionCubit>().getDirection(
        DirectionScreen._sourceText,
        DirectionScreen._source ?? defaultLatLng,
        DirectionScreen._destinationText,
        DirectionScreen._destination ?? defaultLatLng);

    context
        .read<HomeCubit>()
        .getCameraPostion(DirectionScreen._source ?? defaultLatLng);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetDirection();

    markers.addAll([
      Marker(markerId: MarkerId('KTX khu B'), position: _pVNUDorm),
      Marker(markerId: MarkerId('UIT'), position: _pUIT)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DirectionCubit, DirectionState>(
        builder: (context, state) {
          return SafeArea(
            child: Center(
              child: state.when(
                  initial: () => Container(),
                  loading: () => CircularProgressIndicator(),
                  loaded: (sourceText, source, destinationText, destination,
                      polylines) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  LocationChooseWidget(
                                      icon: FontAwesomeIcons.circleDot,
                                      text: sourceText,
                                      color: Colors.blue,
                                      iconColor: Colors.blue,
                                      iconSize: 15,
                                      onTap: () {}),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocationChooseWidget(
                                      icon: Icons.location_on_outlined,
                                      text: destinationText,
                                      color: Colors.grey,
                                      iconColor: Colors.red,
                                      iconSize: 20,
                                      onTap: () {}),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // try {
                                //   setState(() {
                                //     if (destinationText == "Choose destination") {
                                //       destinationText = sourceText;
                                //       sourceText = "Choose Start Location";
                                //     } else if (sourceText == "Choose Start Location") {
                                //       sourceText = destinationText;
                                //       destinationText = "Choose Start Location";
                                //     } else {
                                //       String temp = sourceText;
                                //       sourceText = destinationText;
                                //       destinationText = temp;
                                //     }

                                //     LatLng? lng = source;
                                //     source = destination;
                                //     destination = lng;
                                //   });
                                // } catch (e) {
                                //   print(e);
                                // }
                              },
                              icon: Icon(
                                Icons.import_export,
                                size: 28,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: BlocBuilder<HomeCubit, HomeState>(
                              buildWhen: (previous, current) => true,
                              builder: (context, state) {
                                return GoogleMap(
                                  mapType: MapType.normal,
                                  initialCameraPosition:
                                      state.data!.locationSelectedCamera!,
                                  markers: {
                                    Marker(
                                        markerId: MarkerId(sourceText),
                                        icon: BitmapDescriptor
                                            .defaultMarkerWithHue(
                                                BitmapDescriptor.hueGreen),
                                        position: source),
                                    Marker(
                                        markerId: MarkerId(destinationText),
                                        position: destination)
                                  },
                                  onMapCreated:
                                      (GoogleMapController controller) {
                                    _controller.complete(controller);
                                  },
                                  tiltGesturesEnabled: true,
                                  myLocationButtonEnabled: true,
                                  myLocationEnabled: true,
                                  indoorViewEnabled: true,
                                  trafficEnabled: true,
                                  fortyFiveDegreeImageryEnabled: true,
                                  polylines: polylines,
                                  onTap: (value) {
                                    print(value);
                                  },
                                );
                              }),
                        ),
                      ],
                    );
                  },
                  error: (e) => Container()),
            ),
          );
        },
      ),
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
