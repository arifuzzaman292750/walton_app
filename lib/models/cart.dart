import 'package:flutter/cupertino.dart';
import 'package:walton_shop/models/product.dart';

class Cart extends ChangeNotifier {

  // list of product for sale
  List<Product> productShop = [
    Product(
        name: 'Freeze',
        price: '48,000.00',
        imagePath: 'lib/images/freeze.png',
        description: 'Bigger than your expectation'),
    Product(
        name: 'Laptop',
        price: '62,000.00',
        imagePath: 'lib/images/laptop.png',
        description: 'Enjoy the shades of blue'),
    Product(
        name: 'TV',
        price: '32,000.00',
        imagePath: 'lib/images/tv.png',
        description: 'Get the real visual experience'),
    Product(
        name: 'Washing Machine',
        price: '30,000.00',
        imagePath: 'lib/images/washing machine.png',
        description: 'Have now smarter options'),
  ];

  // list of items in user cart
List<Product> userCart = [];

  // get list of product for sale
List<Product> getProductList (){
  return productShop;
}

  // get cart
List<Product> getUserCart (){
  return userCart;
}

  // add items to cart
void addItemToCart (Product product){
  userCart.add(product);
  notifyListeners();
}

  // remove item from cart
void removeItemFRomCart (Product product){
  userCart.remove(product);
  notifyListeners();
}


}