import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notex_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/edit_note_Screen.dart';
import 'package:note_app/widgets/custom_note_items.dart';

class CustomNoteListViewBuilder extends StatelessWidget {
  const CustomNoteListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
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
      },
    );
  }
}
