import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.all(20),
    child: Container(
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Image.asset('images/profile.png', width: 70, height: 70)
            ],
          ),
          Column(
            children: [
              Text('Welcome',
                  style: TextStyle(fontSize: 15, color: Colors.black45)),
              Text('Tohny Roshdy',
                  style: TextStyle(fontSize: 18, color: Colors.black))
            ],
          )
        ],
      ),
    ),
  );
}
