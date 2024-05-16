import 'package:flutter/material.dart';
import 'package:walton_shop/models/product.dart';

import '../components/product_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){

              // create a product
              Product product = Product(
                name: 'Freeze',
                price: '48,000.00',
                imagePath: 'lib/images/freeze.png',
                description: 'Bigger than your expectation',
              );
              return ProductTile(
                product: product,
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
    );
  }
}
