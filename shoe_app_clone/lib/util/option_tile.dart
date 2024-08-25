// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final iconName;
  final String optionName;

  const OptionTile({
    super.key,
    required this.optionName,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Option Icon
                  Icon(
                    iconName,
                    size: 40,
                  ),

                  SizedBox(
                    width: 16,
                  ),

                  // Option Name
                  Text(
                    optionName,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
