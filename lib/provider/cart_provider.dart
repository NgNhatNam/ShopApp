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
// tăng sp trong giỏ hàng
  void incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }
// giảm sp trong giỏ hàng
  void decrementQtn(int index) {
    if (_cart[index].quantity <= 1) {
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }
//Tổng tiền bên giỏ hàng
  double totalPrice() {
    double total1 = 0.0;
    for (Product element in _cart) {
      total1 += element.price * element.quantity;
    }
    return total1;
  }
//Tổng tiền bên đã thanh toán
  double totalPaidPrice() {
    double total = 0.0;
    for (Product product in _paidProducts) {
      total += product.price * product.quantity;
    }
    return total;
  }
// Thanh toán
  void checkout() {
    _paidProducts.addAll(_unpaidProducts);
    _unpaidProducts.clear();
    notifyListeners();
  }
// Xóa tổng tiền sau khi thanh toán trên giỏ hàng
  void clearTotalPrice() {
  _cart.clear();
  notifyListeners();
}
// giỏ sp trong giỏ hàng
  void removeFromCart(Product product) { 
  _cart.remove(product); 
  _unpaidProducts.remove(product); 
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
