import 'package:flutter/material.dart';
import 'package:note_app/constants/constant_color.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 55.0,
        decoration: const BoxDecoration(
          color: KPcolor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: const Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
