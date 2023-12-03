// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:note_nested/Widgets/login_screen_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = 'login Screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginScreenView(),
      ),
    );
  }
}
