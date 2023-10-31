import 'package:blog_app/App/controller/blog_controller.dart';
import 'package:blog_app/Routes/Routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(BlogController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesClass.getLoginRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
