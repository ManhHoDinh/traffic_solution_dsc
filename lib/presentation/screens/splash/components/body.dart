import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';
import 'package:traffic_solution_dsc/presentation/signIn/signIn.dart';
import 'package:traffic_solution_dsc/constraints/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import './splash_content.dart';
import '../../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Traffic Solution!",
      "text": "Navigate your traffic\nHelp you can know info street\nand data.",
      "image": "assets/images/splash_1.png"
    },
    {
      "title": "Store Exploration!",
      "text":
          "Provide info every street\nCompare info Industry Competitors\nManage your store.",
      "image": "assets/images/splash_2.png"
    },
    {
      "title": "Your City Companion!",
      "text":
          "Provide info every street\nCompare info Industry Competitors\nManage your store.",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  void initState() {
    super.initState();
    // Start a timer to automatically change slides
    _startTimer();
  }

  void _startTimer() {
    const slideDuration = Duration(seconds: 3);

    Timer.periodic(slideDuration, (Timer timer) {
      if (currentPage < splashData.length - 1) {
        setState(() {
          currentPage++;
        });
      } else {
        // If we are at the last slide, cancel the timer
        timer.cancel();
        // Optionally, navigate to another screen here if needed
        // Navigator.pushNamed(context, SignIn.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                    title: splashData[index]["title"],
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          margin: EdgeInsets.only(right: 5),
                          height: 6,
                          width: currentPage == index ? 20 : 6,
                          decoration: BoxDecoration(
                            color: currentPage == index
                                ? Color(0xFFFF7643)
                                : Color(0xFFD8D8D8),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                    Padding(
                      padding:
                          EdgeInsets.all(10.0), // Define the padding you want
                      child: DefaultButton(
                          color: Color(0xFFAFF8E9),
                          text: "Continue as guest",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) => HomeCubit(),
                                  child: HomeScreen(),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(10.0), // Define the padding you want
                      child: DefaultButton(
                        color: Color(0xFF003860),
                        text: "Login",
                        press: () {
                          Navigator.pushNamed(context, SignIn.routeName);
                        },
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
