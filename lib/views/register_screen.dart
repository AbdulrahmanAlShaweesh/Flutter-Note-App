import 'package:flutter/material.dart';
import 'package:note_nested/Widgets/already_have_account.dart';
import 'package:note_nested/Widgets/custom_do_have_account.dart';
import 'package:note_nested/Widgets/custom_media_icons.dart';
import 'package:note_nested/Widgets/custom_text_form_field.dart';
import 'package:note_nested/Widgets/cutom_login_register.dart';
import 'package:note_nested/Widgets/singup_screen_view.dart';

import '../Widgets/custom_or.dart';
import '../Widgets/forgot_password.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static String id = 'register screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingUpScreenView(),
      ),
    );
  }
}
