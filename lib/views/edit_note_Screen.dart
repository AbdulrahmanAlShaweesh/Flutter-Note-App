import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/edit_note_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key,  this.notes});

  static String id = 'EditNoteScreen';
  final NoteModel? notes;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: EditNoteBody(note: notes!,),
    );
  }
}
