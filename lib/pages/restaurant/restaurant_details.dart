import 'package:caramoel/utils/dimensions.dart';
import 'package:caramoel/widgets/app_column.dart';
import 'package:caramoel/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.restaurantImgSize,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/la_plage_doree.jpg"))),
            )),
        Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcon(icon: Icons.arrow_back_ios),
                const AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            )),
        Positioned(
            left: 0,
            right: 0,
            top: Dimensions.restaurantImgSize - 20,
            bottom: 0,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(
                        text: "La plage dorée",
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: "À la carte"),
                     
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                    left: Dimensions.width20,
                                    right: Dimensions.width20,
                                    bottom: Dimensions.height10),
                                child: Row(children: [
                                  Container(
                                    width: Dimensions.listViewImgSize,
                                    height: Dimensions.listViewImgSize,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radius20),
                                        color: Colors.white38,
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/images/food.jpg"))),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: Dimensions.listViewImgTextSize,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(
                                                  Dimensions.radius30),
                                              topRight: Radius.circular(
                                                  Dimensions.radius30)),
                                          color: Colors.white),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: Dimensions.width10,
                                            right: Dimensions.width10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              BigText(text: "La plage dorée"),
                                              SizedBox(
                                                height: Dimensions.height10,
                                              ),
                                              SmallText(
                                                text:
                                                    "Un dîné avec une vue incroyable !",
                                                color: AppColors.signColor,
                                              ),
                                              SizedBox(
                                                height: Dimensions.height10,
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ]),
                              );
                            }),
                      ),
                      
                    ]))),
      ]),
    );
  }
}
