// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:show_app_clone/modules/cart_provider.dart';
import 'package:show_app_clone/pages/details_page.dart';
import 'package:show_app_clone/pages/home_page.dart';
import 'package:show_app_clone/pages/cart_page.dart';
import 'package:show_app_clone/pages/profile_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/details': (context) => DetailsPage(),
        '/orderHistory': (context) => ShoppigBagPage()
      },
    );
  }
}
