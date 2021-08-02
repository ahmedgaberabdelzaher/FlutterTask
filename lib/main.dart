import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Articles.dart';
import 'package:flutter_application_1/Views/Gallery.dart';
import 'package:flutter_application_1/Views/LiveChat.dart';
import 'package:flutter_application_1/Views/OnlineNews.dart';
import 'package:flutter_application_1/Views/WishList.dart';

import 'Routes/pageRoutes.dart';

void main() {
  runApp(TaskApp());
}

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Press the Navigation Drawer button to the left of AppBar to show
// a simple Drawer with two items.

class TaskApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master Page',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Articles(),
      routes: {
        PageRoutes.articles: (context) => Articles(),
        PageRoutes.gallery: (context) => Gallery(),
        PageRoutes.wishList: (context) => WishList(),
        PageRoutes.liveChat: (context) => LiveChat(),
        PageRoutes.onLineNews: (context) => OnLineNews(),
      },
    );
  }
}
