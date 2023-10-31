import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Routes/Routes.dart';
import 'widgets/Custom_button.dart';
import 'widgets/Text_Field.dart';

class SignUp_Screen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Get.toNamed(RoutesClass.loginScreen);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          SizedBox(
            height: 120,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'SignUp',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text_Field(
            // hintstyle: Icon(Icons.person),
            hintText: "FullName",
            controller: TextEditingController(),
          ),
          SizedBox(
            height: 15,
          ),
          Text_Field(
            // hintstyle: Icon(Icons.email_outlined),
            hintText: "Email",
            controller: TextEditingController(),
          ),
          SizedBox(
            height: 15,
          ),
          Text_Field(
            // hintstyle: Icon(Icons.remove_red_eye_rounded),
            hintText: "Password",
            controller: TextEditingController(),
          ),
          SizedBox(
            height: 15,
          ),
          Text_Field(
            // hintstyle: Icon(Icons.remove_red_eye_rounded),
            hintText: "Confirm Password",
            controller: TextEditingController(),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: CustomButton(
              function: () {
                Get.toNamed(RoutesClass.home);
                ;
              },
              Titel: "Creat Account",
            ),
          )
        ],
      ),
    );
  }
}
