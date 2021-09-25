import 'package:danini/BuildAppToolBar.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Screen/OrderHistoryDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppToolBar(context, "Order History", true, false),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                //var ServiceElevetorlst = _listserviceElevetor[index];
                return GestureDetector(
                    child: OrderHistoryListRow(),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderhistoryDetail()),
                      );
                    });
              },
              itemCount: 3,
            ),
          ),
        ));
  }

  Container OrderHistoryListRow() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: kbackground,
            height: 2,
          ),
          Padding(
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                          Container(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              "\u2022 Delivered",
                              style: TextStyle(
                                color: colorGreen,
                                fontSize: 12,
                                fontFamily: 'GothaProRegular',
                              ),
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
        ],
      ),
    );
  }
}
