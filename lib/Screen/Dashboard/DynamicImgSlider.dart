import 'package:carousel_pro/carousel_pro.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Screen/Dashboard/controller.dart';
import 'package:danini/Screen/Dashboard/controller1.dart';
import 'package:danini/Screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../BuildAppToolBar.dart';
import '../../NavDrawer.dart';

class DynamicImgSlider extends StatelessWidget {
  final ImgController controller = Get.put(ImgController());
  final ImgController1 controller1 = Get.put(ImgController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: BuildAppToolBar(context,"Home",false),
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
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Comming soon",
                        style: TextStyle(
                            color: kTexttitle,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "View all",
                        style: TextStyle(
                            color: dSecondaryColors,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: MediaQuery.of(context).size.height / 4,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()),
                            (Route<dynamic> route) => false);
                      },
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("assets/slider_1.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("assets/slider.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "New Arrival",
                        style: TextStyle(
                            color: kTexttitle,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "View all",
                        style: TextStyle(
                            color: dSecondaryColors,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    height: 250,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()),
                            (Route<dynamic> route) => false);
                      },
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  height: 175,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage("assets/img_1.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Classic Ink Blue Shirt',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'GTDSL-019',
                                    style: TextStyle(
                                        color: dSecondaryColors, fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '\$159.00',
                                        style: TextStyle(
                                            color: dPrimeryColors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '10% OFF',
                                        style: TextStyle(
                                            color: dPrimeryColors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  height:175,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage("assets/img_2.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Classic Ink Blue Shirt',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'GTDSL-019',
                                    style: TextStyle(
                                        color: dSecondaryColors, fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '\$159.00',
                                        style: TextStyle(
                                            color: dPrimeryColors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '10% OFF',
                                        style: TextStyle(
                                            color: dPrimeryColors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  height:
                                      175,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage("assets/img_1.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Classic Ink Blue Shirt',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTextColor,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'GTDSL-019',
                                    style: TextStyle(
                                        color: dSecondaryColors, fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '\$159.00',
                                        style: TextStyle(
                                            color: dPrimeryColors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '10% OFF',
                                        style: TextStyle(
                                            color: dPrimeryColors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            color: kTexttitle,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "View all",
                        style: TextStyle(
                            color: dSecondaryColors,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()),
                            (Route<dynamic> route) => false);
                      },
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                  bottom: Radius.zero),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Image.asset(
                                    "assets/shirts2.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Cotton bottom shirts",
                                    style: TextStyle(
                                        color: kTextColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                  bottom: Radius.zero),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Image.asset(
                                    "assets/shirts2.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Cotton bottom shirts",
                                    style: TextStyle(
                                        color: kTextColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                  bottom: Radius.zero),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Image.asset(
                                    "assets/shirts2.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Cotton bottom shirts",
                                    style: TextStyle(
                                        color: kTextColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Clearance Sale",
                        style: TextStyle(
                            color: kTexttitle,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Obx(() => Carousel(
                          dotBgColor: Colors.transparent,
                          dotColor: Colors.black12,
                          dotIncreasedColor: Colors.black26,
                          images: controller1.images
                              .map((e) => Image.network(e))
                              .toList(),
                          boxFit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
