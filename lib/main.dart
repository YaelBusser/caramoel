import 'package:caramoel/pages/home/food_page_body.dart';
import 'package:caramoel/pages/home/main_food_page.dart';
import 'package:caramoel/pages/restaurant/restaurant_details.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CaraMoël',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: RestaurantDetails(),
    );
  }
}
