import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Comman/ColorFile.dart';
import 'Screen/Dashboard/Dashboard.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  // final ImagePicker _picker = ImagePicker();
  // File _image;

  late String Uploaded_pimgUrl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // _imgFromCamera() async {
  //   //  File image = await ImagePicker.pickImage(source: ImageSource.camera);
  //   PickedFile pickedFile = await _picker.getImage(source: ImageSource.camera);
  //   final File image = File(pickedFile.path);
  //
  //   setState(() {
  //     _image = image;
  //     UploadProfilePicRequest();
  //   });
  // }
  //
  // _imgFromGallery() async {
  //   //  File image = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   PickedFile pickedFile = await _picker.getImage(source: ImageSource.gallery);
  //   final File image = File(pickedFile.path);
  //   setState(() {
  //     _image = image;
  //   //  UploadProfilePicRequest();
  //   });
  // }
  // void _showPicker(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return SafeArea(
  //           child: Container(
  //             child: new Wrap(
  //               children: <Widget>[
  //                 new ListTile(
  //                     leading: new Icon(Icons.photo_library),
  //                     title: new Text('Photo Library'),
  //                     onTap: () {
  //                       _imgFromGallery();
  //                       Navigator.of(context).pop();
  //                     }),
  //                 new ListTile(
  //                   leading: new Icon(Icons.photo_camera),
  //                   title: new Text('Camera'),
  //                   onTap: () {
  //                     _imgFromCamera();
  //                     Navigator.of(context).pop();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       }
  //   );
  // }
  //

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 250,
            child: DrawerHeader(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Stack(children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/person.png'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 60.0, left: 95.0, right: 10),
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
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 0, right: 0),
                    child: Center(
                      child: Text(
                        "Vimal Parmar",
                        style: TextStyle(
                            color: kdrawertitlecolor,
                            fontSize: 22,
                            fontFamily: 'GothaPro',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.0, left: 0, right: 0),
                    child: Center(
                      child: Text(
                        "VimalParmar@gmail.com",
                        style: TextStyle(
                            color: kdrawertitlecolor,
                            fontSize: 16,
                            fontFamily: 'GothaPro',
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_home.png',
              height: 20,
              width: 20,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),
            ),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (BuildContext context) => Dashboard()),
                (Route<dynamic> route) => false),
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_categories.png',
              height: 20,
              width: 20,
            ),
            title: Text('Categories',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_discount_coupon.png',
              height: 20,
              width: 20,
            ),
            title: Text('Discount Coupon',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_order_history.png',
              height: 20,
              width: 20,
            ),
            title: Text('Order history',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_cart.png',
              height: 20,
              width: 20,
            ),
            title: Text('Cart',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_notification.png',
              height: 20,
              width: 20,
            ),
            title: Text('Notifications',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.grey),
            title: Text('My Account',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_setting.png',
              height: 20,
              width: 20,
            ),
            title: Text('Settings',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Image.asset(
              'assets/ic_about.png',
              height: 20,
              width: 20,
            ),
            title: Text('About',
              style: TextStyle(
                  color: kdrawertitlecolor,
                  fontSize: 16,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w300),),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
