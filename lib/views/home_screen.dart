import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: CustomNoteViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF85fdde),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
