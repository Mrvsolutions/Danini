import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/models/Product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final void Function() press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image, fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              // products is out demo list
              product.title,
              style: TextStyle(
                  color: kTextColor,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
                color: ktextpriceColor,
                fontFamily: 'GothaPro',
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
