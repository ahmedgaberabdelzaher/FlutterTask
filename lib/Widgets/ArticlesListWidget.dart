import 'dart:convert';
import 'dart:ui';
import 'package:flutter_application_1/Views/ArticlesDetail.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/ArticlesModel.dart';

class ArticlesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articles>>(
      future: _fetchArticles(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Articles> data = snapshot.data;
          return _articlesListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Articles>> _fetchArticles() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v1/articles?source=associated-press&apiKey=33d48e11ae934d1da44b75f767eb89e0'));

    if (response.statusCode == 200) {
      var articles = List<Map<String, dynamic>>.from(
          json.decode(response.body)['articles']);
      return articles.map((article) => new Articles.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load Articles from API');
    }
  }

  ListView _articlesListView(data) {
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ListBody(
                children: [
                  FadeInImage.assetNetwork(
                      placeholder: 'images/placeholder.png',
                      image: data[index].urlToImage != null
                          ? data[index].urlToImage
                          : 'https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI'),
                  Text(
                    data[index].title != null ? data[index].title : '',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        data[index].author != null ? data[index].author : '',
                        style: TextStyle(fontSize: 16, color: Colors.black38)),
                  ),
                  Divider()
                ],
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      settings:
                          new RouteSettings(name: "/Articles/ArticlesDetails"),
                      builder: (BuildContext context) =>
                          new ArticlesDetails(articles: data[index])),
                )
              },
            ),
          );
        });
  }
}
