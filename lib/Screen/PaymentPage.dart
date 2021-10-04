import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../BuildAppToolBar.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final bool isLargeScreen = MediaQuery.of(context).size.width > 320;
    final double topPadding = isLargeScreen ? 14.0 : 24.0;
    final EdgeInsets inset = EdgeInsets.only(left: 16.0, top: topPadding);
    return Scaffold(
        appBar: BuildAppToolBar(context, "Payments", true, false),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                color: kbackground,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: kbackground,
                        height: 2,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Saved Cards",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 16,
                                  fontFamily: 'GothaProMedium',
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/ic_add.png',
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Add New Card",
                                      style: TextStyle(
                                        color: dPrimeryColors,
                                        fontSize: 14,
                                        fontFamily: 'GothaProMedium',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 220,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          "Shoping Card",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'GothaProMedium',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          'assets/ic_mastercard.png',
                                          height: 35,
                                          width: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: TextField(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'GothaProMedium'),
                                      decoration: InputDecoration(
                                        hintText: "Enter card number",
                                        hintStyle: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontFamily: 'GothaProMedium'),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Text(
                                              "CARD HOLDER",
                                              style: TextStyle(
                                                color: colorCardhint,
                                                fontSize: 11,
                                                fontFamily: 'GothaProMedium',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 130,
                                            height: 45,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: TextField(
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'GothaProMedium'),
                                                decoration: InputDecoration(
                                                  hintText: "Vimal Parmar",
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'GothaProMedium'),
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Text(
                                              "EXPIRES",
                                              style: TextStyle(
                                                color: colorCardhint,
                                                fontSize: 11,
                                                fontFamily: 'GothaProMedium',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 45,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: TextField(
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'GothaProMedium'),
                                                decoration: InputDecoration(
                                                  hintText: "DD/MM",
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'GothaProMedium'),
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Text(
                                              "CVV",
                                              style: TextStyle(
                                                color: colorCardhint,
                                                fontSize: 11,
                                                fontFamily: 'GothaProMedium',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 80,
                                            height: 45,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: TextField(
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'GothaProMedium'),
                                                decoration: InputDecoration(
                                                  hintText: "123",
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'GothaProMedium'),
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (newValue) {
                                setState(() {});
                              },
                            ),
                            Expanded(
                              child: Text(
                                "XXXX XXXX XXXX 5682",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontFamily: 'GothaProRegular',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/ic_visa.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Select Another Payment Options",
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 16,
                            fontFamily: 'GothaProMedium',
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildpaymentSources('assets/ic_google.png', context),
                          buildpaymentSources(
                              'assets/ic_facebook.png', context),
                          buildpaymentSources('assets/ic_twitter.png', context),
                          buildpaymentSources('assets/ic_twitter.png', context),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildpaymentSources('assets/ic_google.png', context),
                          buildpaymentSources(
                              'assets/ic_facebook.png', context),
                          buildpaymentSources('assets/ic_twitter.png', context),
                          buildpaymentSources('assets/ic_cod.png', context),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.white,
                  height: 60,
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
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => PaymentPage()),
                              // );
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Container(
                                width: 180,
                                height: 45,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: dPrimeryColors,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'GothaPro',
                                  ),
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

  Container buildpaymentSources(String imagePath, BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
        border: Border.all(color: dSecondaryColors, width: 0.5),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          scale: 14,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
