import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Screen/ProductDetail/ProductDetailPage.dart';
import 'package:danini/models/Product.dart';
import 'package:flutter/material.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 40,
            color: Colors.transparent,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: ktextpriceColor,),
                      hintText: "Search",hintStyle: TextStyle(fontSize: 14,color: ktextpriceColor),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ktextpriceColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.filter_list,color: Colors.white,),
                    onPressed: () {
                      // Provider.of<MyBottomSheetModel>(context)
                      //     .changeState();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(),
                            ));
                      },
                    )),
          ),
        ),
      ],
    );
  }
}
