import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String Titel;
  final Function function;
  const CustomButton({required this.function, required this.Titel, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 3),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(4)),
        child: Text(
          Titel,
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
