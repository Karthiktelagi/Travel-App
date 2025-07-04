import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double size;          // Should be final
  final String text;
  final Color color;

  const AppText({
    super.key,
    this.size = 16,
    required this.text,
    this.color = Colors.white,
  });       // Call super constructor properly

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
