// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:show_app_clone/modules/cart_provider.dart';
import 'package:show_app_clone/util/cart_tile.dart';

class ShoppigBagPage extends StatelessWidget {
  const ShoppigBagPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = Provider.of<CartProvider>(context).items;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shopping Bag',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),

              // Order List
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = cartItems[index];

                    return CartTile(
                      shoeTitle: item.shoeName,
                      quantity: 2,
                      status: 'In Cart',
                      imagePath: item.imagePath,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
