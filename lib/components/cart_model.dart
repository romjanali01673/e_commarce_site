import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List  _shopItem = [
    ["BMW" , "150003425", "assets/images/1.jpeg", Colors.yellow ],
    ["TOYOTA" , "3452342", "assets/images/2.jpeg", Colors.green ],
    ["Audi" , "23462457", "assets/images/1.jpeg", Colors.red ],
    ["Mercedes Benz" , "457247345", "assets/images/2.jpeg", Colors.orange ],
  ];
  
  List  _cartItem = [];

  List get shopItem => _shopItem;
  List get cartItem => _cartItem;

  void addToCart({
    required String name,
    required String price,
    required String imagePath,
    required color,
    }){
    _cartItem.add([name, price, imagePath, color]);
    notifyListeners();
  }

  void removeFromCart({required int index}){
    _cartItem.removeAt(index);
    notifyListeners();
  }

  double calculateTotal(){
    double totalPrice = 0;
    cartItem.map((x){
      totalPrice += double.parse(x[1]);
    }).toList();
    return totalPrice;
  }
  

}