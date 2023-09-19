import 'package:flutter/material.dart';

class LocationChooseWidget extends StatelessWidget {
  LocationChooseWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.icon,
      required this.iconColor,
      required this.iconSize,
      required this.onTap});
  String text;
  Color color;
  IconData icon;
  Color iconColor;
  double iconSize;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
          SizedBox(
            width: 15 - iconSize + 8,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.7)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                text,
                style: TextStyle(color: color),
              ),
            ),
          )
        ],
      ),
    );
  }
}
