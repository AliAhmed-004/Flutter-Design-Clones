import 'package:flutter/foundation.dart';
import 'cart_item.dart';

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(String shoeName) {
    _items.removeWhere((item) => item.shoeName == shoeName);
    notifyListeners();
  }
}
