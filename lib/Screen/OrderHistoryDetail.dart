import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../BuildAppToolBar.dart';

class OrderhistoryDetail extends StatefulWidget {
  const OrderhistoryDetail({Key? key}) : super(key: key);

  @override
  _OrderhistoryDetailState createState() => _OrderhistoryDetailState();
}

class _OrderhistoryDetailState extends State<OrderhistoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppToolBar(context, "Order History", true, false),
        body: Container(
          color: kbackground,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: kbackground,
                  height: 2,
                ),
                Container(
                  height: 40,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Order Id - OD4489FY92",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'GothaProRegular',
                        color: ktextpriceColor,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  color: kbackground,
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 100,
                        height: 100,
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
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Text(
                                "Purple and Blue Dobby Windowpane Dress Shirt RD-S-014",
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.3,
                                  fontFamily: 'GothaProRegular',
                                  color: kTextColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$159.00",
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontSize: 16,
                                    fontFamily: 'GothaProMedium',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  color: kbackground,
                  height: 10,
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
                Container(
                  color: kbackground,
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                "-\$10.00",
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
