import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMediaIcons extends StatelessWidget {
  const CustomMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25.0)),
          child: SvgPicture.asset(
            'assets/images/facebook.svg',
            height: 30,
            fit: BoxFit.scaleDown,
            color: Colors.blueAccent.withOpacity(0.9),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25.0)),
          child: SvgPicture.asset(
            'assets/images/google.svg',
            height: 20,
            fit: BoxFit.scaleDown,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25.0)),
          child: SvgPicture.asset(
            'assets/images/apple.svg',
            height: 20,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
