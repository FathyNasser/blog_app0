import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  // final hintstyle;
  const Text_Field({
    required this.hintText,
    required this.controller,
    super.key,
  }); // required this.hintstyle

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          // hintStyle: hintstyle,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
