import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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
      child: Column(
        children: [
          CustomTextField(
            onChanged: (data) {},
            onSave: (data) {
              title = data;
            },
            hintText: 'Title: ',
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomTextField(
            onChanged: (data) {},
            onSave: (data) {
              subTitle = data;
            },
            hintText: 'Contents',
            maxline: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomBottom(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();

                    var formatedCurrentDate =
                        DateFormat.yMd().format(currentDate);
                    var noteMode = NoteModel(
                      title: title!,
                      contents: subTitle!,
                      color: Colors.blue.value,
                      date: formatedCurrentDate.toString(),
                    );

                    BlocProvider.of<AddNotesCubit>(context).addNote(noteMode);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  formateMonth({required month}) {
    if (month == 1) {
      return 'January';
    } else if (month == 2) {
      return 'February';
    } else if (month == 5) return 'May';
  }
}
