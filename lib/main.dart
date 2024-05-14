import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/src/app.dart';
import 'package:my_first_flutter_project/src/bindings/int_binding.dart';
import 'package:my_first_flutter_project/src/controller/bottom_nav_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'myApp',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.white,
                titleTextStyle: TextStyle(color: Colors.black))),
        initialBinding: IntBinding(),
        home: MyHomePage());
  }
}
