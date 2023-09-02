import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/models/search/mapbox/feature.dart';

import 'package:traffic_solution_dsc/presentation/screens/Direction/SubScreen/DirectionScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/Direction/SubScreen/cubit/direction_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/cubit/search_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/searchSreen.dart';
import 'package:traffic_solution_dsc/presentation/widgets/locationChooseWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  LatLng defaultLatLng = LatLng(0, 0);
  LatLng source = LatLng(0, 0);
  LatLng destination = LatLng(0, 0);
  String sourceText = 'Your location';
  String destinationText = "Choose destination";
  @override
  void initState() {
    // TODO: implement initState
    getUserCurrentLocation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
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
                        onTap: () async {
                          var result = await Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (_) => BlocProvider(
                                        create: (context) => SearchCubit(),
                                        child: SearchScreen(),
                                      )));
                          try {
                            if (result != null) {
                              Features location = result;
                              source = LatLng(location.center!.elementAt(1),
                                  location.center!.first);
                              setState(() {
                                sourceText = location.text ?? "";
                              });
                              if (checkCanRoute())
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("$source to $destination"),
                                  backgroundColor: Colors.green,
                                ));
                            }
                          } catch (error) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("$error"),
                              backgroundColor: Colors.red,
                            ));
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LocationChooseWidget(
                        icon: Icons.location_on_outlined,
                        text: destinationText,
                        color: Colors.grey,
                        iconColor: Colors.red,
                        iconSize: 20,
                        onTap: () async {
                          var result = await Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (_) => BlocProvider(
                                        create: (context) => SearchCubit(),
                                        child: SearchScreen(),
                                      )));
                          try {
                            if (result != null) {
                              Features location = result;
                              destination = LatLng(
                                  location.center!.elementAt(1),
                                  location.center!.first);
                              setState(() {
                                destinationText = location.text ?? "";
                              });

                              if (checkCanRoute())
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        DirectionScreen.providers(sourceText, source, destinationText,destination)));
                              else
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Check Source and Destination"),
                                  backgroundColor: Colors.red,
                                ));
                            }
                          } catch (error) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("$error"),
                              backgroundColor: Colors.red,
                            ));
                          }
                        },
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    try {
                      setState(() {
                        if (destinationText == "Choose destination") {
                          destinationText = sourceText;
                          sourceText = "Choose Start Location";
                        } else if (sourceText == "Choose Start Location") {
                          sourceText = destinationText;
                          destinationText = "Choose Start Location";
                        } else {
                          String temp = sourceText;
                          sourceText = destinationText;
                          destinationText = temp;
                        }

                        LatLng? lng = source;
                        source = destination;
                        destination = lng;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  icon: Icon(
                    Icons.import_export,
                    size: 28,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }

  bool checkCanRoute() {
    return source != defaultLatLng &&
        destination != defaultLatLng &&
        source != destination;
  }

  void getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR" + error.toString());
    });
    Position currentPostion = await Geolocator.getCurrentPosition();
    source = LatLng(currentPostion.latitude, currentPostion.longitude);
    //Fake Location In VNU Dorm:
    //source = LatLng(10.882495758523962, 106.78255494069631);
  }
}
