import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/ArticlesModel.dart';
import 'package:flutter_application_1/NavigationDrwaer/navigationDrawer.dart';

class ArticlesDetails extends StatelessWidget {
  ArticlesDetails({this.articles});

  final Articles articles;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("ArticlesDetails"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: articles.urlToImage != null
                      ? articles.urlToImage
                      : 'https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI'),
              /*  */
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(
                      articles.title != null ? articles.title : '',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      articles.description != null ? articles.description : '',
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                    Text(articles.author != null ? 'By ' + articles.author : '',
                        style: TextStyle(fontSize: 16, color: Colors.black38)),
                  ])),
              ElevatedButton(onPressed: () {}, child: Text('Open Web Site '))
            ],
          )),
        ));
    //Center(child: Text(articles.description)));
  }
}
