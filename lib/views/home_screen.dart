import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomNoteViewBody(),
      ),
    );
  }
}
