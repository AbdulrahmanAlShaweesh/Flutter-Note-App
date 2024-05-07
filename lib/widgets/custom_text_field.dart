import 'package:flutter/material.dart';
import 'package:note_app/constants/constant_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxline = 1,
    this.onSave,
  });

  final String hintText;
  final int maxline;
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'field is required';
        }
      },
      onSaved: onSave,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPcolor),
        border: buildBorder(),
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
