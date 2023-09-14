import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/assets_helper.dart';
import 'package:traffic_solution_dsc/core/helper/image_helper.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageHelper.loadFromAsset(AssetHelper.imgNoData, width: 300, height: 300),
          const SizedBox(height: 16),
          Container(
            padding: EdgeInsets.only(left:55),
            child: Text(
              'Not Found Data',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
