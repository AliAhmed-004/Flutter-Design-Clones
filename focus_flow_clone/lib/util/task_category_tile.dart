// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskCategoryTile extends StatelessWidget {
  final String date;

  const TaskCategoryTile({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(32),
        ),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Text(
          date,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
