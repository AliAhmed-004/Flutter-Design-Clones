// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dribbble_clone/components/navbar_link.dart';
import 'package:dribbble_clone/constants.dart';
import 'package:dribbble_clone/widgets/my_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            // Main Padding of the Page
            padding:
                const EdgeInsets.symmetric(horizontal: 70.0, vertical: 30.0),
            child: Column(
              children: [
                // Navbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Section
                    Row(
                      children: [
                        NavbarLink(linkName: 'Find Designers'),
                        NavbarLink(linkName: 'Inspiration'),
                        NavbarLink(linkName: 'Jobs'),
                        NavbarLink(linkName: 'Go Pro'),
                      ],
                    ),

                    // Dribbble Logo
                    Image.asset(
                      'assets/logos/dribbble_logo.jpg',
                      height: 70,
                    ),

                    // Searchbar, Sign in/ Log in buttons
                    Row(
                      children: [
                        // Search Bar
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 250,
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Icon(Icons.search_outlined),
                              Text(
                                'Search',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 20),

                        // Login Text Button
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),

                        SizedBox(width: 20),

                        // Signup Button
                        MyButton(
                          backgroundColor: Colors.black,
                          borderColor: Colors.black,
                          buttonText: 'Sign up',
                          textColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 100),

                // MAIN BODY
                // -> Marketing Text
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.yellowAccent,
                  ),
                  child: Text(
                    'Over 3 million ready-to-work creatives!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 40),

                // -> Big Text
                SizedBox(
                  width: 950,
                  child: Text(
                    'The world\'s destination for design',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 90,
                    ),
                  ),
                ),

                SizedBox(height: 12),

                // -> Subtitle
                Text(
                  'Get inspired by the work of millions of top-rated designers & agencies around the world.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 48),

                // -> Get Started button
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(height: 80),

                // -> Carousel of Designers
                // TODO Convert to CarouselSlider.builder()
                CarouselSlider(
                  items: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset('assets/designers/designer1.png')),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset('assets/designers/designer2.png')),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset('assets/designers/designer3.png')),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset('assets/designers/designer5.png')),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset('assets/designers/designer6.png')),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset('assets/designers/designer7.png')),
                  ],
                  options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                    viewportFraction: 0.2,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(milliseconds: 5000),
                    autoPlayCurve: Curves.linear,
                    autoPlayAnimationDuration: Duration(seconds: 5),
                    scrollPhysics: NeverScrollableScrollPhysics(),
                  ),
                ),

                SizedBox(height: 80),

                // -> Inspiring Designs Section
                // - -> Heading
                Text(
                  'Explore Inspiring Designs',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 40),

                // - -> Actual Inpirations
                // TODO Convert this into a Grid Layout
                Row(
                  children: [
                    Image.asset('assets/inspirations/inspiration1.png'),
                    Image.asset('assets/inspirations/inspiration2.png'),
                    Image.asset('assets/inspirations/inspiration3.png'),
                    Image.asset('assets/inspirations/inspiration4.png'),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Image.asset('assets/inspirations/inspiration5.png'),
                    Image.asset('assets/inspirations/inspiration6.png'),
                  ],
                ),

                SizedBox(height: 80),

                // -> Browse more inspiration Button
                MyButton(
                  buttonText: 'Browse more inspirations',
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  borderColor: Colors.black,
                ),

                SizedBox(height: 100),

                // -> Find next Designer Section
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amber[200],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 150),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Find your next',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' designer today',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 600,
                        child: Text(
                          'The world\'s leading brands use Dribbble to hire creative talent. Browse millions of top-rated portfolios to find your perfect creative match.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),

                      SizedBox(height: 40),

                      // GET STARTED NOW + LEARN ABOUT HIRING buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            buttonText: 'Get started now',
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            borderColor: Colors.black,
                          ),
                          SizedBox(width: 20),
                          MyButton(
                            buttonText: 'Learn more about hiring',
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                            borderColor: null,
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      // ARE YOU A DESIGNED? JOIN NOW text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Are you a designer?',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            ' Join Dribbble',
                            style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 40),
                // -> Another Carousel
                CarouselSlider.builder(
                  itemCount: secondInspirationPaths.length,
                  itemBuilder: (context, int index, int realIndex) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(secondInspirationPaths[index]),
                  ),
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    viewportFraction: 0.15,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayCurve: Curves.linear,
                    autoPlayAnimationDuration: Duration(seconds: 5),
                    scrollPhysics: NeverScrollableScrollPhysics(),
                  ),
                ),

                SizedBox(height: 40),

                // -> Footer
                // - -> Dribbble Logo and links
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Dribbble Logo
                      Image.asset('assets/logos/dribbble_logo.jpg', height: 80),

                      SizedBox(width: 30),

                      // links
                      Row(
                        children: [
                          NavbarLink(linkName: 'For designers'),
                          NavbarLink(linkName: 'Hire talent'),
                          NavbarLink(linkName: 'Inspiration'),
                          NavbarLink(linkName: 'Advertising'),
                          NavbarLink(linkName: 'Blog'),
                          NavbarLink(linkName: 'About'),
                          NavbarLink(linkName: 'Support'),
                          NavbarLink(linkName: 'Careers'),
                        ],
                      ),
                      // - -> Social Media Links
                      Row(
                        children: [
                          Image.asset('assets/logos/twitter_logo.png',
                              height: 30),
                          SizedBox(width: 10),
                          Image.asset('assets/logos/facebook_logo.png',
                              height: 30),
                          SizedBox(width: 10),
                          Image.asset('assets/logos/instagram_logo.png',
                              height: 30),
                          SizedBox(width: 10),
                          Image.asset('assets/logos/pinterest_logo.png',
                              height: 30)
                        ],
                      ),
                    ],
                  ),
                )
                // - -> Social Media Links
              ],
            ),
          ),
        ),
      ),
    );
  }
}
