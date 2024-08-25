// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emotions extends StatelessWidget {
  final String emoji;
  const Emotions({super.key, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        emoji,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
