import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationDrwaer/navigationDrawer.dart';

class OnLineNews extends StatelessWidget {
  static const String routeName = '/OnLineNews';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("OnLineNews"),
          actions: [Image.asset('images/search.png')],
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("Sorry Service Is Not available")));
  }
}
