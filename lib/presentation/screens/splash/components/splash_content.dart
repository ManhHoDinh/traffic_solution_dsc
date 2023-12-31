import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/constraints/size_config.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    this.title,
    this.text,
    this.image,
  }) : super(key: key);
  final String? title, text, image;

  @override
  _SplashContentState createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          widget.image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        Spacer(flex: 1),
        Text(
          widget.title!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(flex: 1),
        Text(
          widget.text!,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
