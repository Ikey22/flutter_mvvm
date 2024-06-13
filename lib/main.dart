import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_tutorial/bindings/home_binding.dart';
import 'package:mvvm_tutorial/routes/home_routes.dart';
import 'package:mvvm_tutorial/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      getPages: HomeRoutes.pages,
      home: const Home(),
    );
  }
}
