import 'package:flutter/material.dart';

class CustomLoginAndRegister extends StatelessWidget {
  CustomLoginAndRegister({
    super.key,
    required this.text,
  });

  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: 70,
      ),
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xfff5786b),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text.toString(),
        style: const TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
