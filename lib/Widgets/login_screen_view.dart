import 'package:flutter/material.dart';
import 'package:note_nested/Widgets/custom_do_have_account.dart';
import 'package:note_nested/Widgets/custom_media_icons.dart';
import 'package:note_nested/Widgets/custom_or.dart';
import 'package:note_nested/Widgets/custom_text_form_field.dart';
import 'package:note_nested/Widgets/cutom_login_register.dart';
import 'package:note_nested/Widgets/forgot_password.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/images/logo.png',
            height: 60,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Login to your account ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            personIcon: Icons.person,
            hintText: 'Enter your email',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            personIcon: Icons.lock,
            hintText: 'Enter your password',
            sufIcon: Icons.visibility,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const SizedBox(
            height: 25.0,
          ),
          const CustomForgotPassword(),
          const SizedBox(
            height: 30,
          ),
          CustomLoginAndRegister(
            text: 'Sign In',
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          const orLoginWithOtherAccounts(),
          const SizedBox(
            height: 30,
          ),
          const CustomMediaIcons(),
          const SizedBox(
            height: 15,
          ),
          const CustomDontHaveAccount()
        ],
      ),
    );
  }
}
