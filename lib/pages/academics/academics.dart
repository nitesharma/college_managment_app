import 'package:flutter/material.dart';
import 'package:project_4/models/image_links.dart';
import 'package:project_4/pages/notes/civil_notes.dart';
import 'package:project_4/pages/notes/cse_notes.dart';
import 'package:project_4/pages/notes/electrical_notes.dart';
import 'package:project_4/pages/notes/mechanical_notes.dart';

import 'package:project_4/pages/notes/notes_first.dart';
import 'package:velocity_x/velocity_x.dart';

class Academics extends StatefulWidget {
  const Academics({Key? key}) : super(key: key);

  @override
  _AcademicsState createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: "Academics"
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
          //first year
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MainPage()));
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
                    firstYear,
                    height: 80,
                    width: 80,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "First Year".text.bold.size(20).make()
                ],
              ),
            ),
          ),

          //computer
          GestureDetector(
            onTap: () async {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CseNotes()));
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    computerImg,
                    height: 80,
                    width: 80,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Computer Science"
                      .text
                      .align(TextAlign.center)
                      .bold
                      .size(20)
                      .make()
                ],
              ),
            ),
          ),

          //electrical
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ElectricalNotes()));
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    electricalImg,
                    height: 80,
                    width: 80,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Electrical Engineering"
                      .text
                      .bold
                      .align(TextAlign.center)
                      .size(20)
                      .make()
                ],
              ),
            ),
          ),

          //civil
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CivilNotes()));
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
                    civilImg,
                    height: 80,
                    width: 80,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Civil Engineering".text.bold.size(20).make()
                ],
              ),
            ),
          ),

          /// mechanical
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MechanicalNotes()));
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
                    mechanicalImg,
                    height: 80,
                    width: 80,
                    color: Theme.of(context).primaryColor,
                  ),
                  10.heightBox,
                  "Mechanical Engineering"
                      .text
                      .align(TextAlign.center)
                      .bold
                      .size(20)
                      .make()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
