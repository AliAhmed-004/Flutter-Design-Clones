// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:show_app_clone/modules/cart_item.dart';
import 'package:show_app_clone/modules/cart_provider.dart';
import 'package:show_app_clone/util/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 9.5),
            child: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
            ),
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_view_rounded,
            color: Colors.grey,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_rounded,
            color: Colors.grey,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_rounded,
            color: Colors.grey,
          ),
          label: "",
        ),
      ]),

      // Main UI
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Profile Image
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: CircleAvatar(
                      radius: 32,
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                  ),

                  // Searchbar
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 20),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 25),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/orderHistory');
                          },
                          child: Icon(Icons.shopping_bag_outlined),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              // Big Card
              Container(
                padding: EdgeInsets.all(32),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Description
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Men's Shoe",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Nike Air Max",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "2090 Alpha",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        // Shoe Image
                        Image.asset(
                          'assets/nike-air-max-dn.png',
                          width: 200,
                          // fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Price
                        Row(
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              '180',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),

                        // Detail Button
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/details',
                                arguments: {
                                  'shoeName': 'Nike Air Max 2090 Alpha',
                                  'shoeCategory': "Men's Shoe",
                                  'shoePrice': 180,
                                  'imagePath': 'nike-air-max-dn.png',
                                  'description':
                                      'Say hello to the next generation of Air technology. The Air Max Dn features our Dynamic Air unit system of dual-pressure tubes, creating a reactive sensation with every step. This results in a futuristic design that’s comfortable enough to wear from day to night. Go ahead—Feel the Unreal.'
                                });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Detail',
                                    style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orangeAccent,
                                  )
                                ],
                              ),

                              // Underline
                              Container(
                                width: 200,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 35,
              ),

              // Men Women Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Men',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    'Women',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 35,
              ),

              // Product Tiles
              Expanded(
                child: ListView(
                  children: [
                    ProductTile(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/details',
                          arguments: {
                            'shoeName': 'Jordan 3 Mid TD',
                            'shoeCategory': "Men's Football Cleats",
                            'shoePrice': 190,
                            'imagePath': 'jordans.png',
                            'description':
                                'Your game demands traction. Enter the Jordan 3 Mid TD cleats. Their wide stud placement helps you tear down the field and make quick cuts. Premium leather adds durability and structure to the upper while an Air Zoom unit gives you responsive cushioning underfoot. That Jumpman on the heel looks pretty fly too.'
                          },
                        );
                      },
                      shoeName: 'Jordan 3 Mid TD',
                      imagePath: 'assets/jordans.png',
                      shoeCategory: "Men's Football Cleats",
                      shoePrice: 190,
                      onAddToCart: () {
                        final cartProvider =
                            Provider.of<CartProvider>(context, listen: false);
                        cartProvider.addItem(
                          CartItem(
                            shoeName: 'Jordan 3 Mid TD',
                            shoeCategory: "Men's Football Cleats",
                            shoePrice: 190,
                            imagePath: 'assets/jordans.png',
                          ),
                        );
                      },
                    ),
                    ProductTile(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/details',
                          arguments: {
                            'shoeName': 'Nike Pegasus 41',
                            'shoeCategory': "Men's Road Running Shoe",
                            'shoePrice': 140,
                            'imagePath': 'pegasus.png',
                            'description':
                                'Responsive cushioning in the Pegasus provides an energized ride for everyday road running. Experience lighter-weight energy return with dual Air Zoom units and a ReactX foam midsole. Plus, improved engineered mesh on the upper decreases weight and increases breathability.',
                          },
                        );
                      },
                      shoeName: 'Nike Pegasus 41',
                      imagePath: 'pegasus.png',
                      shoeCategory: "Men's Road Running Shoe",
                      shoePrice: 140,
                      onAddToCart: () {
                        final cartProvider =
                            Provider.of<CartProvider>(context, listen: false);
                        cartProvider.addItem(
                          CartItem(
                            shoeName: 'Jordan 3 Mid TD',
                            shoeCategory: "Men's Football Cleats",
                            shoePrice: 190,
                            imagePath: 'assets/jordans.png',
                          ),
                        );
                      },
                    ),
                    ProductTile(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/details',
                          arguments: {
                            'shoeName': 'Sabrina 2 "Mirrored"',
                            'shoeCategory': "Basketball Shoe",
                            'shoePrice': 130,
                            'imagePath': 'sabrina-2-mirrored.png',
                            'description':
                                "Sabrina Ionescu's success is no secret. Her game is based on living in the gym, getting in rep after rep to perfect her craft. The Sabrina 2 sets you up to do more, so you're ready to go when it's game-time. Our newest Cushlon foam helps keep you fresh, Air Zoom cushioning adds the pop, and sticky traction helps you create that next-level distance. Sabrina's handed you the tools. Time to go to work."
                          },
                        );
                      },
                      shoeName: "Sabrina 2 \"Mirrored\"",
                      imagePath: 'assets/sabrina-2-mirrored.png',
                      shoeCategory: "Basketball Shoe",
                      shoePrice: 130,
                      onAddToCart: () {
                        final cartProvider =
                            Provider.of<CartProvider>(context, listen: false);
                        cartProvider.addItem(
                          CartItem(
                            shoeName: 'Jordan 3 Mid TD',
                            shoeCategory: "Men's Football Cleats",
                            shoePrice: 190,
                            imagePath: 'assets/jordans.png',
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
