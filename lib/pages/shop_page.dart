import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walton_shop/models/product.dart';

import '../components/product_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add product to cart
  void addProductToCart (Product product){
    Provider.of<Cart>(context, listen: false).addItemToCart(product);

    // alert the user, product successfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Successfully added!'),
          content: Text('Check your cart'),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [

        // search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.blue[200],),
              ),
              Icon(Icons.search, color: Colors.blue[200],),
            ],
          ),
        ),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone flies... some fly longer than others',
            style: TextStyle(color: Colors.blue[200],),
          ),
        ),

        // hot pics
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot pic 🔥',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[200],
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[200],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 5,),

        // list of product for sale
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){

              // get a product from shop list
              Product product = value.getProductList()[index];

              // return the product
              return ProductTile(
                product: product,
                onTap: () => addProductToCart(product),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 5, left: 25.0, right: 25.0,),
          child: Divider(
            color: Colors.blue[200],
          ),
        ),
      ],
    ),
    );
  }
}
