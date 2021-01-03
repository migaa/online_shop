import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Улаан цамц',
      description: 'Улаан цамц - Хамгийн их зарагдсан',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Өмд',
      description: 'Залуучуудын энэ зуны тренд өмд',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Шар ороолтт',
      description: 'Өвлийн маш дулаахан, зөөлөн бөгөөд загварлаг ороолт',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Хайруулын таваг',
      description:
          'Ямарч хүссэн хоолоо хийх боломжтой шинэ загварын бүтээгдэхүүн.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];
  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    // _items.add();
    notifyListeners();
  }
}