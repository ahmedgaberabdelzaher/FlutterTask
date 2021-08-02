import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget createDrawerBodyItem(
    {String icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Image.asset(icon, width: 30, height: 30),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
