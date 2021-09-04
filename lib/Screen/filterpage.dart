import 'package:danini/BuildAppToolBar.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppToolBar(context, 'Filter', true,false),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Short by",
                      style: TextStyle(
                          fontSize: 16,
                          color: kTextColor,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'GothaPro'),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Short by Name",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: ktextpriceColor,
                                  fontFamily: 'GothaPro',
                                  fontWeight: FontWeight.w500),
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
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blueGrey,
                            ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Show Product",
                      style: TextStyle(
                          fontSize: 16,
                          color: kTextColor,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Show 24 Products",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: ktextpriceColor,
                                  fontFamily: 'GothaPro',
                                  fontWeight: FontWeight.w500),
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
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blueGrey,
                            ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Price",
                      style: TextStyle(
                          fontSize: 16,
                          color: kTextColor,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  activeColor: colorSliderActive,
                  inactiveColor: colorSliderInActive,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$" + _currentRangeValues.start.round().toString(),
                          style: TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                              fontFamily: 'GothaPro',
                              fontWeight: FontWeight.w500)),
                      Text("\$" + _currentRangeValues.end.round().toString(),
                          style: TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                              fontFamily: 'GothaPro',
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: SizedBox(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: RaisedButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Apply",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'GothaPro',
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          color: dPrimeryColors,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color:ktextpriceColor, width: 0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: SizedBox(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Center(
                          child: FlatButton(
                            onPressed: (){

                            },
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                  color: ktextpriceColor,
                                  fontFamily: 'GothaPro',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
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
    );
  }
}
