import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walton_shop/models/cart.dart';
import 'package:walton_shop/models/product.dart';

import '../components/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, Child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // heading
              Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[200],
                ),
              ),

              SizedBox(height: 20,),

              Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {

                        // get individual product
                        Product individualProduct = value.getUserCart()[index];

                        // return the cart item
                        return CartItem(product: individualProduct,);
                      },
                  ),
              ),
            ],
          ),
        ),
    );
  }
}
