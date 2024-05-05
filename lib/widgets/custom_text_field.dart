import 'package:flutter/material.dart';
import 'package:note_app/constants/constant_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.vertical,
  });

  final String hintText;
  final double? vertical;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPcolor),
      ),
    );
  }

  OutlineInputBorder buildBorder([colors]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: colors ?? Colors.white,
      ),
    );
  }
}
