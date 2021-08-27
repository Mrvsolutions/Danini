import 'package:carousel_pro/carousel_pro.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Screen/ProductDetail/ProductDetailcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final ProductDetailcontroller controller = Get.put(ProductDetailcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            color: kbackground,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.8,
                    child: Obx(() => Carousel(
                          dotBgColor: Colors.transparent,
                          dotColor: Colors.black12,
                          dotIncreasedColor: Colors.black26,
                          images: controller.images
                              .map((e) => Image.network(e))
                              .toList(),
                          boxFit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
          ),
        )));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu_rounded,
          color: Colors.grey,
        ),
        onPressed: () {},
      ),
      title: Center(
        child: Text(
          "ProductDetail",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
        // IconButton(
        //   icon: Icon(Icons.search, color: Colors.grey),
        //   onPressed: () {},
        // ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
          onPressed: () {},
        ),
        SizedBox(width: 20 / 2)
      ],
    );
  }
}
