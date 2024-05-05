import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_note_listview.dart';

class CustomNoteViewBody extends StatelessWidget {
  const CustomNoteViewBody({super.key});

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
