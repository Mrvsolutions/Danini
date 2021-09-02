import 'package:danini/BuildAppToolBar.dart';
import 'package:danini/Screen/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../NavDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppToolBar(context, "", false),
      drawer: NavDrawer(),
      body: Body(),
    );
  }
}
