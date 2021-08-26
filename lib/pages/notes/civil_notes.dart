import 'package:flutter/material.dart';
import 'package:project_4/pages/notes/civil/civil_final.dart';
import 'package:project_4/pages/notes/civil/civil_second.dart';
import 'package:project_4/pages/notes/civil/civil_third.dart';
import 'package:velocity_x/velocity_x.dart';

class CivilNotes extends StatefulWidget {
  const CivilNotes({Key? key}) : super(key: key);

  @override
  _CivilNotesState createState() => _CivilNotesState();
}

class _CivilNotesState extends State<CivilNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: "Civil".text.make(),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CivilSecond()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]),
              height: 80,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  20.widthBox,
                  Icon(
                    Icons.folder,
                    size: 60,
                    color: Theme.of(context).primaryColor,
                  ),
                  20.widthBox,
                  "Second Year".text.bold.size(30).make(),
                ],
              ),
            ),
          ),
          25.heightBox,
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CivilThird()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]),
              height: 80,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  20.widthBox,
                  Icon(
                    Icons.folder,
                    size: 60,
                    color: Theme.of(context).primaryColor,
                  ),
                  20.widthBox,
                  "Third Year".text.bold.size(30).make(),
                ],
              ),
            ),
          ),
          25.heightBox,
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CivilFinal()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]),
              height: 80,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  20.widthBox,
                  Icon(
                    Icons.folder,
                    size: 60,
                    color: Theme.of(context).primaryColor,
                  ),
                  20.widthBox,
                  "Final Year".text.bold.size(30).make(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
