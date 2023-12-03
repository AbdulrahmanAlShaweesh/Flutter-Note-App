import 'package:flutter/material.dart';

class CustomForgotPassword extends StatelessWidget {
  const CustomForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Text('')),
        Text(
          'Forgot Password',
          style: TextStyle(fontSize: 15.0, color: Colors.grey),
        ),
      ],
    );
  }
}
