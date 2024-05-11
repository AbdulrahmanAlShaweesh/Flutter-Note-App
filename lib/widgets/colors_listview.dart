
import 'package:flutter/material.dart';

class ColorItems extends StatelessWidget {
  const ColorItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25 * 2.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: ColorItems(),
          );
        },
      ),
    );
  }
}
