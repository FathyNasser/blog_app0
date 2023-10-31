import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Routes/Routes.dart';

class PostItem extends StatelessWidget {
  const PostItem(
      {super.key,
      required this.userId,
      required this.title,
      required this.body});
  final String title;
  final String body;
  final int userId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RoutesClass.showUserData, arguments: {"userId": userId});
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(color: Colors.white70, width: 1)),
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text(
                title,
                style: TextStyle(fontSize: 15, color: Colors.black87),
              ),
              subtitle: Text(
                body,
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Like",
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Comment",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
