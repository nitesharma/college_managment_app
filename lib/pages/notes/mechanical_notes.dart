import 'package:flutter/material.dart';
import 'package:project_4/pages/notes/mechanical/mech_final.dart';
import 'package:project_4/pages/notes/mechanical/mech_second.dart';
import 'package:project_4/pages/notes/mechanical/mech_third.dart';
import 'package:velocity_x/velocity_x.dart';

class MechanicalNotes extends StatefulWidget {
  const MechanicalNotes({Key? key}) : super(key: key);

  @override
  _MechanicalNotesState createState() => _MechanicalNotesState();
}

class _MechanicalNotesState extends State<MechanicalNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: "Mechanical".text.make(),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MechSecond()));
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
                  .push(MaterialPageRoute(builder: (context) => MechThird()));
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
                  .push(MaterialPageRoute(builder: (context) => MechFinal()));
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
