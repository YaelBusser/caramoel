import 'package:caramoel/home/main_food_page.dart';
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
      home: MainFoodPage(),
    );
  }
}