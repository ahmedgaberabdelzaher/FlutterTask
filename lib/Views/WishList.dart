import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationDrwaer/navigationDrawer.dart';

class WishList extends StatelessWidget {
  static const String routeName = '/WishList';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("WishList"),
          actions: [Image.asset('images/search.png')],
        ),
        drawer: NavigationDrawer(),
        body:
            Center(child: Text("There are no items availble to be displayed")));
  }
}
