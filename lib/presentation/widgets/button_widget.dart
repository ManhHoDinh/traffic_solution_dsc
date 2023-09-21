import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/constants/dimension_constants.dart';
import 'package:traffic_solution_dsc/core/constants/text_styles.dart';
import 'package:traffic_solution_dsc/core/constants/color_palatte.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;
  Color? textColor;
  ButtonWidget(
      {super.key,
      required this.label,
      required this.color,
      required this.onTap,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: kDefaultBorderRadius,
      onTap: onTap,
      splashColor: Colors.amber,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration:
            BoxDecoration(borderRadius: kDefaultBorderRadius, color: color),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Text(
          label,
          style: TextStyles.h6.setColor(textColor ?? ColorPalette.blackText),
        ),
      ),
    );
  }
}
