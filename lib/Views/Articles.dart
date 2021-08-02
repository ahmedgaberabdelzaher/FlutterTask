import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationDrwaer/navigationDrawer.dart';
import 'package:flutter_application_1/Widgets/ArticlesListWidget.dart';

class Articles extends StatelessWidget {
  static const String routeName = '/Articles';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Articles"),
          actions: [Image.asset('images/search.png')],
        ),
        drawer: NavigationDrawer(),
        body: Center(child: ArticlesListView()));
  }
}
