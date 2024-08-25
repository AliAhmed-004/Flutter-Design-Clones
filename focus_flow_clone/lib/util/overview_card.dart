// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final int numberOfTasksCompleted;
  final String cardHeading;
  final color;
  final width;
  final fontColor;

  const OverviewCard({
    super.key,
    required this.numberOfTasksCompleted,
    required this.cardHeading,
    this.color,
    this.width,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(3, 9),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardHeading,
                style: TextStyle(
                  color: fontColor,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.arrow_forward,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            numberOfTasksCompleted.toString(),
            style: TextStyle(
              color: fontColor,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Permanent Tasks',
            style: TextStyle(
              color: fontColor,
            ),
          ),
        ],
      ),
    );
  }
}
