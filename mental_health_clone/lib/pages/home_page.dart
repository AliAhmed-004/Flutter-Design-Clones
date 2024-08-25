// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health_clone/util/emotions.dart';
import 'package:mental_health_clone/util/exercises.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Bottom Navigation
        bottomNavigationBar: BottomNavigationBar(items: [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
            tooltip: 'Home',
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "", tooltip: 'Settings'),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            tooltip: 'Profile',
          )
        ]),

        // Main UI
        backgroundColor: Colors.blue[800],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, User',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          //Date
                          Text(
                            'August 11, 2024',
                            style: TextStyle(
                              color: Colors.blue[100],
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),

                      // Notification Icon
                      InkWell(
                        onTap: () {
                          // Notification functionality
                          print('Notification icon tapped');
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue[500],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // Search Bar
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[500],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.search,
                        color: Colors.blue[100],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.blue[100],
                          ),
                          border: InputBorder.none, // Removes the underline
                        ),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue[100],
                        ),
                        cursorColor:
                            Colors.white, // Sets the color of the cursor
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // How do you feel section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // Emotion Faces
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Bad
                  Column(
                    children: [
                      Emotions(emoji: '😞'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Bad',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  // Fine
                  Column(
                    children: [
                      Emotions(emoji: '🙁'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fine',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  // Well
                  Column(
                    children: [
                      Emotions(emoji: '🙂'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Well',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  // Excellent
                  Column(
                    children: [
                      Emotions(emoji: '😃'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Excellent',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // Exercises Section
              Expanded(
                  child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      // Actual Exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExercisesTile(
                              exerciseName: 'Speaking Skills',
                              numberOfExercises: 15,
                              icon: Icons.favorite,
                              color: Colors.orange,
                            ),
                            ExercisesTile(
                              exerciseName: 'Reading Skills',
                              numberOfExercises: 34,
                              icon: Icons.book,
                              color: Colors.blue,
                            ),
                            ExercisesTile(
                              exerciseName: 'Writing Skills',
                              numberOfExercises: 10,
                              icon: Icons.abc_outlined,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
