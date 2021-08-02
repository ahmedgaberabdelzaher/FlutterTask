import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/pageRoutes.dart';
import 'package:flutter_application_1/Widgets/createDrawerBodyItem.dart';
import 'package:flutter_application_1/Widgets/createDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: 'images/explore.png',
            text: 'Articles',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.articles),
          ),
          createDrawerBodyItem(
            icon: 'images/wishlist.png',
            text: 'Wish List',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.wishList),
          ),
          createDrawerBodyItem(
            icon: 'images/gallery.png',
            text: 'Gallery',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.gallery),
          ),
          createDrawerBodyItem(
            icon: 'images/live.png',
            text: 'liveChat',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.liveChat),
          ),
          createDrawerBodyItem(
              icon: 'images/onlineNews.png',
              text: 'onlineNews',
              onTap: () => Navigator.pushReplacementNamed(
                  context, PageRoutes.onLineNews)),
        ],
      ),
    );
  }
}
