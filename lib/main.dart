import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:tutorbin_assessment/view/restaurant_view.dart';

void main() {
  runApp(const GetMaterialApp(home: MyApp(),) );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Order food',
      home: RestaurantView(),
    );
  }
}
