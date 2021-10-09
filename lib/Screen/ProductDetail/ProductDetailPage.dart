import 'package:carousel_pro/carousel_pro.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Screen/ProductDetail/ProductDetailcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../BuildAppToolBar.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final ProductDetailcontroller controller = Get.put(ProductDetailcontroller());
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  bool pressAttention5 = false;
  bool pressAttention6 = false;
  Color cardBackgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppToolBar(context, "Product Detail", true, true),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 2,
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Puple and Blue Dobby Windowpane Dress Shirt RD-S-014",
                                        style: TextStyle(
                                          fontSize: 17,
                                          height: 1.5,
                                          fontFamily: 'GothaProMedium',
                                          color: kTextColor,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$149.00",
                                            style: TextStyle(
                                                color: ktextpriceColor,
                                                fontSize: 17,
                                                fontFamily: 'GothaProRegular',),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(3),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: kbackground),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: dSecondaryColors,
                                                      size: 14,
                                                    )),
                                                Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 3),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 3,
                                                      vertical: 2),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                      color: kbackground),
                                                  child: Text(
                                                    '1',
                                                    style: TextStyle(
                                                        fontFamily: 'GothaProMedium',
                                                        color: dSecondaryColors,
                                                        fontSize: 14),
                                                  ),
                                                ),
                                                InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.add,
                                                      color: dSecondaryColors,
                                                      size: 14,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Collar Size",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kTextColor,
                                              fontFamily: 'GothaProMedium',),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: () {
                                                pressAttention1 = true;
                                                pressAttention2 = false;
                                                pressAttention3 = false;
                                                pressAttention4 = false;
                                                changeColor(dPrimeryColors);
                                              },
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                child: Card(
                                                  color: pressAttention1
                                                      ? dPrimeryColors
                                                      : kbackground,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Center(
                                                    child: Text(
                                                      "S",
                                                      style: TextStyle(
                                                          color: pressAttention1
                                                              ? Colors.white
                                                              : dSecondaryColors,
                                                          fontFamily:
                                                              'GothaProMedium',
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                pressAttention1 = false;
                                                pressAttention2 = true;
                                                pressAttention3 = false;
                                                pressAttention4 = false;
                                                changeColor(dPrimeryColors);
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                child: Card(
                                                  color: pressAttention2
                                                      ? dPrimeryColors
                                                      : kbackground,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Center(
                                                    child: Text(
                                                      "M",
                                                      style: TextStyle(
                                                          color: pressAttention2
                                                              ? Colors.white
                                                              : dSecondaryColors,
                                                          fontFamily:
                                                              'GothaProMedium',
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                pressAttention1 = false;
                                                pressAttention2 = false;
                                                pressAttention3 = true;
                                                pressAttention4 = false;
                                                changeColor(dPrimeryColors);
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                child: Card(
                                                  color: pressAttention3
                                                      ? dPrimeryColors
                                                      : kbackground,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Center(
                                                    child: Text(
                                                      "L",
                                                      style: TextStyle(
                                                          color: pressAttention3
                                                              ? Colors.white
                                                              : dSecondaryColors,
                                                          fontFamily:
                                                              'GothaProMedium',
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                pressAttention1 = false;
                                                pressAttention2 = false;
                                                pressAttention3 = false;
                                                pressAttention4 = true;
                                                changeColor(dPrimeryColors);
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                child: Card(
                                                  color: pressAttention4
                                                      ? dPrimeryColors
                                                      : kbackground,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Center(
                                                    child: Text(
                                                      "XL",
                                                      style: TextStyle(
                                                          color: pressAttention4
                                                              ? Colors.white
                                                              : dSecondaryColors,
                                                          fontFamily:
                                                              'GothaProMedium',
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Details",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kTextColor,
                                              fontFamily: 'GothaProMedium',),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 18,
                                                    width: 18,
                                                    child: Image.asset(
                                                        "assets/fabricimage.png"),
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "Luxurious Fabric Signature 100% Egyptian Cotton",
                                                    style: TextStyle(
                                                        fontFamily: 'GothaProRegular',
                                                        color: kdetailcolor,
                                                        height: 1.4,
                                                        fontSize: 12),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 18,
                                                    width: 18,
                                                    child: Image.asset(
                                                        "assets/detailimage.png"),
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "Immaculate Details",
                                                    style: TextStyle(
                                                        fontFamily: 'GothaProRegular',
                                                        color: kdetailcolor,
                                                        fontSize: 12),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 18,
                                                    width: 18,
                                                    child: Image.asset(
                                                        "assets/slimfitimage.png"),
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "Perfect Slim Fit",
                                                    style: TextStyle(
                                                        fontFamily: 'GothaProRegular',
                                                        color: kdetailcolor,
                                                        fontSize: 12),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Additional information",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kTextColor,
                                              fontFamily: 'GothaProMedium',),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional.topStart,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Weight",
                                                    style: TextStyle(
                                                        fontFamily: 'GothaProMedium',
                                                        color: kTextColor,
                                                        fontSize: 16),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "5 Kg",
                                                    style: TextStyle(
                                                        color: ktextpriceColor,
                                                        fontFamily: 'GothaProRegular',
                                                        fontSize: 16),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional.topStart,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Dimensions",
                                                    style: TextStyle(
                                                        color: kTextColor,
                                                        fontFamily: 'GothaProMedium',
                                                        fontSize: 16),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "42.5 X 24.2 X 8.5 cm",
                                                    style: TextStyle(
                                                        color: ktextpriceColor,
                                                        fontFamily: 'GothaProRegular',
                                                        fontSize: 16),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional.topStart,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Fit",
                                                    style: TextStyle(
                                                        fontFamily: 'GothaProMedium',
                                                        color: kTextColor,
                                                        fontSize: 16),
                                                    textAlign: TextAlign.left,
                                                  ),

                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "Slim Fit",
                                                    style: TextStyle(
                                                        color: ktextpriceColor,
                                                        fontFamily: 'GothaProRegular',
                                                        fontSize: 16),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Description",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kTextColor,
                                              fontFamily: 'GothaProMedium',),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Darts on our shirts:",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: kTexttitle,
                                              fontFamily: 'GothaProRegular',),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                          style: TextStyle(
                                              fontSize: 11,
                                              height: 1.4,
                                              color: ktextpriceColor,
                                              fontFamily: 'GothaProRegular',),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 0),
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 0),
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 0),
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 0),
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.indigo,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 55,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: dPrimeryColors,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'GothaProMedium',),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }

  void changeColor(Color changeToColor) {
    setState(() {
      cardBackgroundColor = changeToColor;
    });
  }
}
