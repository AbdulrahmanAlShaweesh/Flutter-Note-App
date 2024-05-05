import 'package:flutter/material.dart';
import 'package:note_app/constants/constant_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxline = 1,
  });

  final String hintText;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPcolor),
      ),
      maxLines: maxline,
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
