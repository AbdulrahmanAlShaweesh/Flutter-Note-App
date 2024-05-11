import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorItems extends StatelessWidget {
  const ColorItems({
    super.key,
    required this.isActive,
    required this.color,
  });

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28.0,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 25.0,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> colors = [
    const Color(0xFFFFAEBC),
    const Color(0xFFFBE7C6),
    const Color(0xFFB4F8C8),
    const Color(0xFFF21B3F),
    const Color(0xFFA0E7E5),
    const Color(0xFFFF9914),
    const Color(0XFF08BDBD),
    const Color(0xFFFF9914),
    const Color(0xFF29BF12),
    const Color(0xFFABFF4F),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30 * 2.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItems(
                isActive: currentIndex == index ? true : false,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
