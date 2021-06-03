import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const AppText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Clemente',
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
