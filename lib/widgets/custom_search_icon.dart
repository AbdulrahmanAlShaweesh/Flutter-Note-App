import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
    required this.icons,
    required this.onPressed,
  });

  final IconData icons;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icons,
            size: 25.0,
          )),
    );
  }
}
