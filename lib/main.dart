import 'package:flutter/material.dart';
import 'package:note_app/views/home_screen.dart';

void main() {
  runApp(
    const FlutterNoteApp(),
  );
}

class FlutterNoteApp extends StatelessWidget {
  const FlutterNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
