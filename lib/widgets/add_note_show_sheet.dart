import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddNoteShowBottomSheet extends StatelessWidget {
  const AddNoteShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 40.0,
        horizontal: 20.0,
      ),
      child: AddNoteForm(),
    );
  }
}
