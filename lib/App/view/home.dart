import 'package:blog_app/App/controller/blog_controller.dart';
import 'package:blog_app/App/view/widgets/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../Routes/Routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final BlogController blogController = Get.find<BlogController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
                Text(
                  "Blog Viewer",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
              ],
            ),
            SizedBox(
              height: 550,
              child: Obx(() {
                return ListView.builder(
                    shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: blogController.blogs.value.length,
                    itemBuilder: (context, index) {
                      final item = blogController.blogs.value[index];
                      return PostItem(
                        title: item.title,
                        body: item.body,
                        userId: item.userId,
                      );
                    });
              }),
            )
          ],
        ),
      ),
    );
  }
}
