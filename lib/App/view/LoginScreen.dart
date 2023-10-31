import 'package:blog_app/Routes/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/Custom_button.dart';
import 'widgets/Text_Field.dart';

class Login_Screen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'LOGIN',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text_Field(
            // hintstyle: Icon(Icons.email_outlined),
            hintText: "Email",
            controller: TextEditingController(),
          ),
          SizedBox(
            height: 10,
          ),
          Text_Field(
            // hintstyle: Icon(Icons.remove_red_eye_rounded),
            hintText: "Password",
            controller: TextEditingController(),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            function: () {
              Get.toNamed(RoutesClass.home);
            },
            Titel: "Login",
          ),
          SizedBox(
            height: 200,
          ),
          GestureDetector(
            child: Text(" Don't have acount Signup"),
            onTap: () {
              Get.toNamed(RoutesClass.signUpScreen);
            },
          )
        ],
      ),
    );
  }
}
