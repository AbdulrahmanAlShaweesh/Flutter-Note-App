import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_items.dart';

class CustomNoteListViewBuilder extends StatelessWidget {
  const CustomNoteListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return const NoteItems();
      },
    );
  }
}
