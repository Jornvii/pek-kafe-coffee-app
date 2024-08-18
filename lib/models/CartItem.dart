import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get itemCount => _items.fold(0, (total, item) => total + item.quantity);

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  void incrementItemQuantity(int index) {
    _items[index].quantity++;
    notifyListeners();
  }

  void decrementItemQuantity(int index) {
    if (_items[index].quantity > 1) {
      _items[index].quantity--;
    } else {
      _items.removeAt(index);
    }
    notifyListeners();
  }
}



class CartItem {
  final String title;
  final String imageUrl;
  final String price;
  final String size;
  final int sugarLevel;
  int quantity;

  CartItem({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.size,
    required this.sugarLevel,
    required this.quantity,
  });
}
