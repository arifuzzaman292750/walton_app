import 'package:flutter/material.dart';
import 'package:walton_shop/models/product.dart';

class ProductTile extends StatelessWidget {

  Product product;
  ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // product pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
              child: Image.asset(product.imagePath),
          ),

          // description
          Text(
            product.description,
            style: TextStyle(color: Colors.blue[500],),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // product name
                   Text(
                     product.name,
                     style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                       color: Colors.blue[500],
                     ),
                   ),

                    // price
                    Text('\Taka ' + product.price),

                  ],
                ),

                // plus button
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                    child: Icon(Icons.add, color: Colors.blue[900],),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
