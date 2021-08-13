import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Comman/stringfile.dart';
import 'package:danini/Screen/login_scree.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWelcomePage extends StatefulWidget {
  MyWelcomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyWelcomePageState createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                color: Colors.black12,
                child: Icon(
                  Icons.image_outlined,
                  size: 100,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  color: dPrimeryColors,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                StrWelcomeDesription,
                style: TextStyle(
                    color: dPrimeryColors,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 3,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) => LoginScreen()),
                                (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
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
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 3,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: dPrimeryColors,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
