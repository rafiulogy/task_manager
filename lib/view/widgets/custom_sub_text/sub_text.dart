import 'package:flutter/material.dart';

class SubText extends StatelessWidget {
  final String text;

  const SubText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black54,
      ),
    );
  }
}
