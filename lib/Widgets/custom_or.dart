// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class orLoginWithOtherAccounts extends StatelessWidget {
  const orLoginWithOtherAccounts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.grey,
            endIndent: 5,
          ),
        ),
        Text('OR'),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 5,
          ),
        ),
      ],
    );
  }
}