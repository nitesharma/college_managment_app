import 'package:flutter/material.dart';
import 'package:project_4/pages/notes/computer_science/cse_final.dart';
import 'package:project_4/pages/notes/computer_science/cse_second.dart';
import 'package:project_4/pages/notes/computer_science/cse_third.dart';
import 'package:velocity_x/velocity_x.dart';

class CseNotes extends StatefulWidget {
  const CseNotes({Key? key}) : super(key: key);

  @override
  _CseNotesState createState() => _CseNotesState();
}

class _CseNotesState extends State<CseNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: "Computer Science".text.make(),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CseSecond()));
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
                  .push(MaterialPageRoute(builder: (context) => CseThird()));
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
                  .push(MaterialPageRoute(builder: (context) => CseFinal()));
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
