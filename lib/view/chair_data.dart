import 'package:flutter/material.dart';
import 'package:furniture_digital_agency/controller/furniture_controller.dart';
import 'package:get/instance_manager.dart';

class ChairData extends StatelessWidget {
  // Dependency Injection
  FurnitureController furnitureController = Get.put(FurnitureController());

  ChairData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("DATA: ${furnitureController.furniture.length.toString()} ")
        ],
      ),
    );
  }
}
