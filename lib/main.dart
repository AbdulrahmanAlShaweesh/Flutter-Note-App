import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constant_keys.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/edit_note_Screen.dart';
import 'package:note_app/views/home_screen.dart';

void main() async {
  // using hive flutter
  await Hive.initFlutter();

  // open box.
  await Hive.openBox(kNoteBox);
  // register the box
  Hive.registerAdapter(NoteModelAdapter());
  runApp(
    const FlutterNoteApp(),
  );
}

class FlutterNoteApp extends StatelessWidget {
  const FlutterNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color.fromARGB(255, 38, 37, 37),
          fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        EditNoteScreen.id: (context) => const EditNoteScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
