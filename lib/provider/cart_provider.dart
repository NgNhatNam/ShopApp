import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  final List<Product> _paidProducts = [];
  final List<Product> _unpaidProducts = [];

  List<Product> get cart => _cart;
  List<Product> get paidProducts => _paidProducts;
  List<Product> get unpaidProducts => _unpaidProducts;

  void toggleFavorite(Product product) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
      _unpaidProducts.add(product);
    }
    notifyListeners();
  }

  void incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  void decrementQtn(int index) {
    if (_cart[index].quantity <= 1) {
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }

  double totalPrice() {
    double total1 = 0.0;
    for (Product element in _cart) {
      total1 += element.price * element.quantity;
    }
    return total1;
  }

  double totalPaidPrice() {
    double total = 0.0;
    for (Product product in _paidProducts) {
      total += product.price * product.quantity;
    }
    return total;
  }

  void checkout() {
    _paidProducts.addAll(_unpaidProducts);
    _unpaidProducts.clear();
    notifyListeners();
  }

  void clearTotalPrice() {
  _cart.clear();
  notifyListeners();
}

  void removeFromCart(Product product) { // Sửa đổi ở đây
  _cart.remove(product); // Sửa đổi ở đây
  _unpaidProducts.remove(product); // Sửa đổi ở đây
  notifyListeners();
}

  void cancelOrder(int index) {
    final canceledProduct = _unpaidProducts.removeAt(index);
    _cart.remove(canceledProduct);
    notifyListeners();
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}
