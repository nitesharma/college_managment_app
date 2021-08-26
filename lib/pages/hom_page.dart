import 'package:flutter/material.dart';
import 'package:project_4/models/image_links.dart';
import 'package:project_4/pages/academics/academics.dart';
import 'package:project_4/pages/meet.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String rurl = 'http://esuvidha.info/';
  String paperUrl = "https://rtupaper.com/";
  String placementUrl = 'http://www.mitrc.ac.in/training-placement-cell/';

  Future<void> launchInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceWebView: true,
          enableJavaScript: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {}
  }

  Future<void> launchInAppPaper(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          enableDomStorage: true,
          forceWebView: true,
          enableJavaScript: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {}
  }

  Future<void> launchInAppPlacement(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          enableDomStorage: true,
          forceWebView: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: "College App"
            .text
            .color(Theme.of(context).accentColor)
            .size(30)
            .make(),
      ),
      body: GridView.count(
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Academics()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    academicsImg,
                    height: 100,
                    width: 100,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Academics".text.bold.size(20).make()
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              launchInApp(rurl);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    resultsImg,
                    height: 100,
                    width: 100,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Results".text.bold.size(20).make()
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              launchInAppPlacement(placementUrl);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    placmentImg,
                    height: 100,
                    width: 100,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Placements".text.bold.size(20).make()
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              launchInAppPaper(paperUrl);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    paperImg,
                    height: 100,
                    width: 100,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Old Paper".text.bold.size(20).make()
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Meeting()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    classImg,
                    height: 100,
                    width: 100,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Online Class".text.bold.size(20).make()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
