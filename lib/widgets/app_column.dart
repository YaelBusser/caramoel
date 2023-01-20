import 'package:caramoel/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(text: text, size: Dimensions.font26,),
      SizedBox(
        height: Dimensions.height10,
      ),
      SmallText(
        text: "Un dîné avec une vue incroyable !",
        color: AppColors.signColor,
      ),
      SizedBox(
        height: Dimensions.height10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              color: AppColors.signColor,
              iconColor: AppColors.iconColor1),
          IconAndTextWidget(
              icon: Icons.location_on,
              text: "2 km",
              color: AppColors.signColor,
              iconColor: AppColors.mainColor),
          IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32 mins",
              color: AppColors.signColor,
              iconColor: AppColors.iconColor2)
        ],
      )
    ]);
  }
}
