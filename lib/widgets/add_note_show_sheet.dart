import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constants/constant_color.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteShowBottomSheet extends StatelessWidget {
  const AddNoteShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40.0,
        horizontal: 20.0,
      ),
      child: ListView(
        children: const [
          CustomTextField(
            hintText: 'Title: ',
          ),
          SizedBox(
            height: 30.0,
          ),
          CustomTextField(
            hintText: 'Contents',
            maxline: 6,
          ),
          SizedBox(
            height: 40,
          ),
          CustomBottom(),
        ],
      ),
    );
  }
}
