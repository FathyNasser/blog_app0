import 'package:blog_app/App/controller/blog_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/user.dart';

class ShowUserData extends StatelessWidget {
  ShowUserData({super.key});
  final BlogController _controller = Get.find<BlogController>();
  User? user;
  @override
  Widget build(BuildContext context) {
    print(Get.arguments);
    if (Get.arguments['userId'] != null) {
      final userId = Get.arguments['userId'].toString();
      Future.delayed(Duration.zero, () {
        _controller.getUser(int.parse(userId));
      });
    }
    return Scaffold(
      body: Center(
        child: Obx(() {
          if (_controller.isLoading.value || _controller.currUser == null) {
            return const CircularProgressIndicator();
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_controller.currUser!.name),
              Text(_controller.currUser!.username),
              Text(_controller.currUser!.email),
              Text(_controller.currUser!.phone),
              Text(_controller.currUser!.website),
            ],
          );
        }),
      ),
    );
  }
}
