import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../BuildAppToolBar.dart';
import '../../NavDrawer.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool IsNotification = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppToolBar(context, "Settings", false, false),
        drawer: NavDrawer(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SwitchListTile(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                title: const Text(
                  'Push Notification',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                      fontFamily: 'GothaPro',
                      fontWeight: FontWeight.w300),
                ),
                value: IsNotification,
                onChanged: (bool value) {
                  setState(() {
                    IsNotification = value;
                  });
                },
                secondary: Image.asset(
                  'assets/ic_setting_notification.png',
                  height: 20,
                  width: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: Image.asset(
                    'assets/ic_language.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Language',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: Image.asset(
                    'assets/ic_feedback.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Send Feedback',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: Image.asset(
                    'assets/ic_share.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Share This App',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: Image.asset(
                    'assets/ic_rating.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Rate This App',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: Image.asset(
                    'assets/ic_privacy.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: Image.asset(
                    'assets/ic_report.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Report a Problem',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: Image.asset(
                    'assets/ic_logout.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                  onTap: () {}),
            ],
          )),
        ));
  }
}
