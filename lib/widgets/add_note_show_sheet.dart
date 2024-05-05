import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteShowBottomSheet extends StatelessWidget {
  const AddNoteShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Text',
            vertical: 10,
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
