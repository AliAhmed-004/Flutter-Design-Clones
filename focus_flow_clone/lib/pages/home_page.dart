// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:focus_flow_clone/util/overview_card.dart';
import 'package:focus_flow_clone/util/task_category_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Greeting Message
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning,',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),

                        // Username
                        Text(
                          'User!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),

                    // Notification and Profile icon
                    Row(
                      children: [
                        // Notification Icon
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                        ),

                        SizedBox(
                          width: 12,
                        ),

                        // Profile Image
                        CircleAvatar(
                          child: Icon(Icons.person),
                          radius: 25,
                        )
                      ],
                    )
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                // New Task Button
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Create New Task',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                // Task Overview Heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Task Overview',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),

                SizedBox(
                  height: 8,
                ),

                // Categories of Task by Date
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TaskCategoryTile(
                        date: 'All',
                      ),
                      TaskCategoryTile(
                        date: 'August 13, 2024',
                      ),
                      TaskCategoryTile(
                        date: 'August 14, 2024',
                      ),
                      TaskCategoryTile(
                        date: 'August 15, 2024',
                      ),
                      TaskCategoryTile(
                        date: 'August 16, 2024',
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 24,
                ),

                OverviewCard(
                  numberOfTasksCompleted: 153,
                  cardHeading: 'Number of tasks performed',
                  color: Colors.blue,
                  fontColor: Colors.white,
                ),

                SizedBox(
                  height: 8,
                ),

                // two bottom cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OverviewCard(
                        width: 300,
                        numberOfTasksCompleted: 23,
                        cardHeading: 'Unfulfilled Tasks',
                        color: Colors.purple[200],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: OverviewCard(
                        width: 310,
                        numberOfTasksCompleted: 23,
                        cardHeading: 'Unfulfilled Tasks',
                        color: Colors.grey[100],
                        fontColor: Colors.black,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                // Manage Your Projects Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Heading
                    Text(
                      'Manage Your Projects',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),

                    // number of projects
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent[100],
                      ),
                      child: Text(
                        '[16]',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 18,
                ),

                // Row -> Profile icons + call with teammates
                Row(
                  children: [
                    // Left Section
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.person),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.person),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.person),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.person),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 12,
                    ),

                    // Right Section
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Calls with Teammates',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent),
                                  child: Icon(Icons.call),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent),
                                  child: Icon(Icons.message),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent),
                                  child: Icon(Icons.telegram),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent),
                                  child: Icon(Icons.contact_emergency),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
