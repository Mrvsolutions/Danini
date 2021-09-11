import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../BuildAppToolBar.dart';
import '../../NavDrawer.dart';

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppToolBar(context, "Settings", false, false),
        drawer: NavDrawer(),
        body: Container());
  }
}
