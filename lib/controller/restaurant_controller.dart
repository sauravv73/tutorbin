import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class RestaurantController extends GetxController {

  num total = 0;
  List cat1 = [];
  List cat2 = [];
  List cat3 = [];
  List cat4 = [];
  List cat5 = [];
  List cat6 = [];

  final List cat1SubItemQty = [].obs;
  final List cat2SubItemQty = [].obs;
  final List cat3SubItemQty = [].obs;
  final List cat4SubItemQty = [].obs;
  final List cat5SubItemQty = [].obs;
  final List cat6SubItemQty = [].obs;


  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/menu.json');
    final data = await json.decode(response);
      cat1 = data["cat1"];
      cat2 = data["cat2"];
      cat3 = data["cat3"];
      cat4 = data["cat4"];
      cat5 = data["cat5"];
      cat6 = data["cat6"];

      for (int i = 0; i < 7; i++) {
        if (i == 0) {
          for (int j = 0; j < cat1.length; j++) {
            cat1SubItemQty.add(0);
          }
        } else if (i == 1) {
          for (int j = 0; j < cat2.length; j++) {
            cat2SubItemQty.add(0);
          }
        } else if (i == 2) {
          for (int j = 0; j < cat3.length; j++) {
            cat3SubItemQty.add(0);
          }
        } else if (i == 3) {
          for (int j = 0; j < cat4.length; j++) {
            cat4SubItemQty.add(0);
          }
        } else if (i == 4) {
          for (int j = 0; j < cat5.length; j++) {
            cat5SubItemQty.add(0);
          }
        } else if (i == 5) {
          for (int j = 0; j < cat6.length; j++) {
            cat6SubItemQty.add(0);
          }
        }
      }
  }

}