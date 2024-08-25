// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:show_app_clone/util/option_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Page',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(26),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 52,
                child: Icon(Icons.person),
              ),

              SizedBox(
                height: 12,
              ),

              // Username
              Text(
                'Ali Ahmed',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Email
              Text(
                'ali.the.ahmed18@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 50,
              ),

              // ListView of Different Options
              Expanded(
                child: ListView(
                  children: [
                    OptionTile(
                      optionName: 'Order History',
                      iconName: Icons.history,
                    ),
                    OptionTile(
                      optionName: 'Wishlist',
                      iconName: Icons.favorite_border,
                    ),
                    OptionTile(
                      optionName: 'Address Book',
                      iconName: Icons.book_rounded,
                    ),
                    OptionTile(
                      optionName: 'Payment Methods',
                      iconName: Icons.payment,
                    ),
                    OptionTile(
                      optionName: 'Settings',
                      iconName: Icons.settings,
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
