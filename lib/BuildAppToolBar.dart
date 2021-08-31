import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Comman/ColorFile.dart';

PreferredSize BuildAppToolBar(
    BuildContext context,String TitleHeading,bool IsBackArrowShow) {
  bool _isVisible = false;
  bool _IsHomeIconShow = false;
  int selectedindix = 0;

  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: AppBar(
      toolbarHeight: 50,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          IsBackArrowShow? Icons.arrow_back_ios:Icons.menu_rounded,
          color: dPrimeryColors,
        ),
        onPressed: () {
          if (IsBackArrowShow)
            {
              Navigator.pop(context);
            }
        },
      ),
      title: Center(
        child: Text(
          TitleHeading,
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
        // IconButton(
        //   icon: Icon(Icons.search, color: Colors.grey),
        //   onPressed: () {},
        // ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: dPrimeryColors),
          onPressed: () {},
        ),
        SizedBox(width: 20 / 2)
      ],
    ),
  );
}