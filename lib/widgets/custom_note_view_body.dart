import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notex_cubit/notes_cubit.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_note_listview.dart';

class CustomNoteViewBody extends StatefulWidget {
  const CustomNoteViewBody({super.key});

  @override
  State<CustomNoteViewBody> createState() => _CustomNoteViewBodyState();
}

class _CustomNoteViewBodyState extends State<CustomNoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: [
          CustomAppBar(
            icons: Icons.search,
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: CustomNoteListViewBuilder(),
          )
        ],
      ),
    );
  }
}
