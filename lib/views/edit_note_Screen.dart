import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_note_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  static String id = 'EditNoteScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteBody(),
    );
  }
}
