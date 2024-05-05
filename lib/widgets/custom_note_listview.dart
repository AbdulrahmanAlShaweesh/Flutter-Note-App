import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_Screen.dart';
import 'package:note_app/widgets/custom_note_items.dart';

class CustomNoteListViewBuilder extends StatelessWidget {
  const CustomNoteListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, EditNoteScreen.id);
            },
            child: const NoteItems(),
          );
        },
      ),
    );
  }
}
