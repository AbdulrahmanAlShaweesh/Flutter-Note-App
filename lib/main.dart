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
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 38, 37, 37),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
