import 'package:danini/BuildAppToolBar.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppToolBar(context, "", true, false),
      body: Container(
        color: kbackground,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              children: [
                Container(
                  height: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Stack(children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(60)),
                              width: 120,
                              height: 120,
                              child: Image.asset('assets/person.png'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: 75.0, left: 100.0, right: 10),
                          child: InkWell(
                            onTap: () {
                              // _showPicker(context);
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: dPrimeryColors,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        width: 25,
                                        height: 25,
                                        child: Icon(Icons.edit,
                                            color: Colors.white, size: 15)),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      'assets/ic_user.png',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      'Vimal Parmar',
                      style: TextStyle(
                          color: kdrawertitlecolor,
                          fontSize: 16,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      'assets/ic_mail.png',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      'VimalParmar@gmail.com',
                      style: TextStyle(
                          color: kdrawertitlecolor,
                          fontSize: 16,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      'assets/ic_mobile.png',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      '+91 9876543210',
                      style: TextStyle(
                          color: kdrawertitlecolor,
                          fontSize: 16,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      'assets/ic_password.png',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      'Change Password',
                      style: TextStyle(
                          color: kdrawertitlecolor,
                          fontSize: 16,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      'assets/ic_myorder.png',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      'My Orders',
                      style: TextStyle(
                          color: kdrawertitlecolor,
                          fontSize: 16,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      'assets/ic_address.png',
                      height: 20,
                      width: 20,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Address',
                            style: TextStyle(
                                color: kdrawertitlecolor,
                                fontSize: 16,
                                fontFamily: 'GothaPro',
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Fransisco Roman Alarcon 1060 W Addission st 13 chicago, IL 6061',
                            style: TextStyle(
                                color: ktextpriceColor,
                                fontSize: 14,
                                letterSpacing: 1,
                                height: 1.4,
                                fontFamily: 'GothaPro',
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  alignment: Alignment.topRight,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "VIEW 1 MORE",
                      style: TextStyle(
                          color: dPrimeryColors,
                          fontSize: 11,
                          fontFamily: 'GothaPro',
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
