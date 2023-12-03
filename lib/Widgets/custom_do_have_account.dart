import 'package:flutter/material.dart';
import 'package:note_nested/views/register_screen.dart';

class CustomDontHaveAccount extends StatelessWidget {
  const CustomDontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account? ',
          style: TextStyle(fontSize: 16.0),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RegisterScreen.id);
          },
          child: const Text(
            'Create',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
