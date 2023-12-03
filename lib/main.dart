import 'package:flutter/material.dart';
import 'package:note_nested/views/login_screen.dart';
import 'package:note_nested/views/register_screen.dart';

void main() {
  runApp(const NoteNestApp());
}

class NoteNestApp extends StatelessWidget {
  const NoteNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
      },
      initialRoute: LoginScreen.id,
    );
  }
}
