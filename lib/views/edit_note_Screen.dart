import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  static String id = 'EditNoteScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            children: [
              CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
