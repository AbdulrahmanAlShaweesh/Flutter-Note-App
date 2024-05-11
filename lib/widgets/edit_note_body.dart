import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notex_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, contents;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.contents = contents ?? widget.note.contents;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icons: Icons.check,
            ),
            const SizedBox(
              height: 40.0,
            ),
            CustomTextField(
              hintText: widget.note.title,
              onChanged: (data) {
                title = data;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomTextField(
              onChanged: (data) {
                contents = data;
              },
              hintText: widget.note.contents,
              maxline: 6,
            )
          ],
        ),
      ),
    );
  }
}
