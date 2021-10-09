// @dart=2.9
import 'package:danini/Screen/MyWelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Comman/ColorFile.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 8,
      navigateAfterSeconds: new MyWelcomePage(title: 'Danini'),
      // title: new Text(
      //   'Welcome In SplashScreen',
      //   style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      // ),
      image: Image(image: new AssetImage("assets/loading1.gif"),fit: BoxFit.fill,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,),
      backgroundColor: Colors.white,
      photoSize: 250,
      loaderColor:dPrimeryColors,
    );
  }
}
// class MyApp extends StatefulWidget {
//   // This widget is the root of your application.
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return new SplashScreen(
//       title: new Text(
//         'Welcome In Danini',
//         style: new TextStyle(fontWeight: FontWeight.bold,
//             fontSize: 20.0),
//       ),
//       seconds: 8,
//       navigateAfterSeconds: MyWelcomePage(title: 'Danini'),
//       image: Image(image: new AssetImage("assets/loading.gif")),
//       backgroundColor: Colors.white,
//       styleTextUnderTheLoader: new TextStyle(),
//       photoSize: 150.0,
//       loaderColor: dPrimeryColors,
//     );
//     // return MaterialApp(
//     //   title: 'Danini',
//     //   theme: ThemeData(
//     //     primarySwatch: Colors.blue,
//     //   ),
//     //   debugShowCheckedModeBanner: false,
//     //   home: MyWelcomePage(title: 'Danini'),
//     // );
//   }
// }
// class AfterSplash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Danini',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: MyWelcomePage(title: 'Danini'),
//     );
//   }
// }

