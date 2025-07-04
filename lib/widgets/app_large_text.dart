import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final double size;           // should be final
  final String text;
  final Color color;

  const AppLargeText({
    super.key,
    this.size = 30,
    required this.text,
    this.color = Colors.cyan,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
