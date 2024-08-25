// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:show_app_clone/modules/cart_item.dart';
import 'package:show_app_clone/modules/cart_provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _selectedSizeIndex = -1; // To track the selected size

  @override
  Widget build(BuildContext context) {
    final List<String> shoeSizes = [
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
      '13',
      '14'
    ];

    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Shoe Image
                Image.asset(
                  args['imagePath'],
                  width: 500,
                ),

                SizedBox(height: 25),

                // Shoe Name
                Text(
                  args['shoeName'],
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // SHoe Category
                Text(
                  args['shoeCategory'],
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey[700],
                  ),
                ),

                SizedBox(height: 20),

                // Shoe Price
                Text(
                  '\$${args['shoePrice']}',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                // Shoe Size Selector
                SizedBox(
                  height: 150, // Adjust the height based on the content
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2, // Adjust to control width/height ratio
                    physics: NeverScrollableScrollPhysics(), // Disable scroll
                    children: List.generate(shoeSizes.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedSizeIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: _selectedSizeIndex == index
                                    ? Colors.orangeAccent
                                    : Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                            color: _selectedSizeIndex == index
                                ? Colors.orangeAccent.withOpacity(0.3)
                                : Colors.white,
                          ),
                          child: Text(
                            shoeSizes[index],
                            style: TextStyle(
                              fontSize: 18,
                              color: _selectedSizeIndex == index
                                  ? Colors.orangeAccent
                                  : Colors.black,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                // Shoe Description
                Text(
                  args['description'],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(Size(150, 50)),
                      ),
                      onPressed: () {
                        // Access the cart provider to add item to cart
                        final cartProvider =
                            Provider.of<CartProvider>(context, listen: false);
                        cartProvider.addItem(
                          CartItem(
                            shoeName: args['shoeName'],
                            shoeCategory: args['shoeCategory'],
                            shoePrice: args['shoePrice'],
                            imagePath: args['imagePath'],
                          ),
                        );

                        // Show a SnackBar after adding the item to the cart
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Item added to cart!'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      label: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
