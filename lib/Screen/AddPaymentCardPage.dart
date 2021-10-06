import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../BuildAppToolBar.dart';

class AddPaymentCardPage extends StatefulWidget {
  @override
  _AddPaymentCardPageState createState() => _AddPaymentCardPageState();
}

class _AddPaymentCardPageState extends State<AddPaymentCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppToolBar(context, "Payments Card", true, false),
        body: Stack(children: [
          SingleChildScrollView(
            child: Container(
              color: kbackground,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: kbackground,
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Text(
                        "Add Your New Card",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 16,
                          fontFamily: 'GothaProMedium',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 15),
                      child: Text(
                        "Account Numner",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 16,
                          fontFamily: 'GothaProRegular',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 16,
                          color: ktextpriceColor,
                          fontFamily: 'GothaProMedium',
                        ),
                        decoration: InputDecoration(
                          hintText: "XXXX XXXX XXXX 3667",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: ktextpriceColor,
                            fontFamily: 'GothaProMedium',
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.2),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.3),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 15),
                      child: Text(
                        "Cardholder Name",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 16,
                          fontFamily: 'GothaProRegular',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 16,
                          color: ktextpriceColor,
                          fontFamily: 'GothaProMedium',
                        ),
                        decoration: InputDecoration(
                          hintText: "Vimal Parmar",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: ktextpriceColor,
                            fontFamily: 'GothaProMedium',
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.2),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.3),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 15),
                              child: Text(
                                "Expiry",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 16,
                                  fontFamily: 'GothaProRegular',
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 10),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ktextpriceColor,
                                    fontFamily: 'GothaProMedium',
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Month/Year",
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: ktextpriceColor,
                                      fontFamily: 'GothaProMedium',
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.2),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.2),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 15),
                              child: Text(
                                "CVV",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 16,
                                  fontFamily: 'GothaProRegular',
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 10),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ktextpriceColor,
                                    fontFamily: 'GothaProMedium',
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "123",
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: ktextpriceColor,
                                      fontFamily: 'GothaProMedium',
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.2),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.2),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                              "Saved Card information for next payment",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 13,
                                fontFamily: 'GothaProMedium',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
        ]));
  }
}
