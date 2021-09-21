import 'package:danini/BuildAppToolBar.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Screen/AddDeliveryAddressPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderSummarry extends StatefulWidget {
  @override
  _OrderSummarryState createState() => _OrderSummarryState();
}

class _OrderSummarryState extends State<OrderSummarry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppToolBar(context, "Order Summarry", true, false),
        body: Stack(
          children: [
            Container(
              color: kbackground,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Vimal Parmar",
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                              fontFamily: 'GothaPro',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Text(
                            "Service Ontario Rue Levy,Montreal P.O. Box 9200 Kingston, ON, K7L 5K4\n514-978-2614",
                            style: TextStyle(
                                color: kTextColor,
                                fontSize: 14,
                                height: 1.5,
                                fontFamily: 'GothaProRegular'),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddDeliveryAddressPage(),
                            ));
                      },
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: dPrimeryColors,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Change or Add Address",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'GothaProMedium',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 130,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("assets/img_1.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Text(
                                      "Puple and Blue Dobby Windowpane Dress Shirt RD-S-014",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'GothaProRegular',
                                        color: kTextColor,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$159.00",
                                        style: TextStyle(
                                          color: ktextpriceColor,
                                          fontSize: 12,
                                          fontFamily: 'GothaProMedium',
                                        ),
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
                                                  horizontal: 3, vertical: 2),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                  color: kbackground),
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'GothaProMedium',
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
                                    height: 8,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Collar Size",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kTextColor,
                                        fontFamily: 'GothaProMedium',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              color: dPrimeryColors,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "M",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'GothaProMedium',
                                                      fontSize: 14),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment Details",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 16,
                                fontFamily: 'GothaPro',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "MRP Total",
                                    style: TextStyle(
                                      color: ktextpriceColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaProRegular',
                                    ),
                                  ),
                                  Text(
                                    "\$159.00",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaProRegular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Container(
                                color: koffwhite,
                                height: 1.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Product Discount",
                                    style: TextStyle(
                                      color: ktextpriceColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaProRegular',
                                    ),
                                  ),
                                  Text(
                                    "\$10.00",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaProRegular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Container(
                                color: koffwhite,
                                height: 1.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tax",
                                    style: TextStyle(
                                      color: ktextpriceColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaProRegular',
                                    ),
                                  ),
                                  Text(
                                    "\$5.00",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaProRegular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Container(
                                color: koffwhite,
                                height: 1.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Ammount",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaPro',
                                    ),
                                  ),
                                  Text(
                                    "\$154.00",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 14,
                                      fontFamily: 'GothaPro',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "You Save \$10.00",
                                  style: TextStyle(
                                    color: colorGreen,
                                    fontSize: 14,
                                    fontFamily: 'GothaProMedium',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.white,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width,
                        color: koffwhite,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payable Ammount",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'GothaProRegular',
                                    color: ktextpriceColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$154.00",
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontSize: 16,
                                    fontFamily: 'GothaProMedium',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Container(
                              width: 180,
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: dPrimeryColors,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Make Payment",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'GothaPro',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
