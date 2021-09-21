import 'package:danini/BuildAppToolBar.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddDeliveryAddressPage extends StatefulWidget {
  @override
  _AddDeliveryAddressPageState createState() => _AddDeliveryAddressPageState();
}

class _AddDeliveryAddressPageState extends State<AddDeliveryAddressPage> {
  bool? IsCreateAccount = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppToolBar(context, "Add Delivery Address", true, false),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Enter Full Name", labelText: "Full Name"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Company Name(Optional)",
                          labelText: "Company Name"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Country/Region",
                          labelText: "Country/Region"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Street Address",
                          labelText: "Street Address"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Town/City*", labelText: "Town/City*"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Province*", labelText: "Province*"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Postal Code*", labelText: "Postal Code*"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Phone*", labelText: "Phone*"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          hintText: "Email Address*",
                          labelText: "Email Address*"),
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: Text(
                      "Create an account?",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: 'GothaProRegular',
                      ),
                    ),
                    value: IsCreateAccount,
                    onChanged: (newValue) {
                      setState(() {
                        IsCreateAccount = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: dPrimeryColors,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Save Address",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'GothaProMedium',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
