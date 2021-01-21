import 'package:flutter/foundation.dart';
import 'cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> productList;
  final DateTime dateTime;

  OrderItem({
    @required this.id,
    @required this.amount,
    @required this.productList,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> orders = [];

  List<OrderItem> get _orders {
    return [...orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: total,
        productList: cartProducts,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
