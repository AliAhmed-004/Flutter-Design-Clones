// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavbarLink extends StatelessWidget {
  final String linkName;
  const NavbarLink({super.key, required this.linkName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: Text(
        linkName,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
