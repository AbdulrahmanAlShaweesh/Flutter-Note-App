import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        children: [
          CustomTextField(
            onSave: (data) {
              title = data;
            },
            hintText: 'Title: ',
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomTextField(
            onSave: (data) {
              subTitle = data;
            },
            hintText: 'Contents',
            maxline: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomBottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteMode = NoteModel(
                  title: title!,
                  contents: subTitle!,
                  color: Colors.blue.value,
                  date: DateTime.now().toString(),
                );

                BlocProvider.of<AddNotesCubit>(context).addNote(noteMode);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
