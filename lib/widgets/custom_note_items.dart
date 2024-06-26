import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notex_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/edit_note_Screen.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({super.key, required this.notes});

  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteScreen(
            notes: notes,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.only(
            left: 5.0, top: 10, right: 20.0, bottom: 20.0),
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 22.0),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  notes.contents,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.6),
                    fontSize: 15.0,
                  ),
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  notes.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
            Text(
              notes.date,
              // 'May 21/2022',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
