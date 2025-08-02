import 'package:flutter/material.dart';
import '../models/product.dart';

class FavProvider with ChangeNotifier {
  final List<Product> _favourites = [];

  List<Product> get items => _favourites;

  void toggleFavourite(Product product) {
    if (_favourites.contains(product)) {
      _favourites.remove(product);
    } else {
      _favourites.add(product);
    }
    notifyListeners();
  }

  bool isFavourite(Product product) => _favourites.contains(product);
}
