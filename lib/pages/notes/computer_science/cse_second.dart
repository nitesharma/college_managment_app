import 'package:flutter/material.dart';
import 'package:project_4/firebase/firebaseai.dart';
import 'package:project_4/models/firebase_file.dart';
import 'package:velocity_x/velocity_x.dart';

class CseSecond extends StatefulWidget {
  @override
  _CseSecondState createState() => _CseSecondState();
}

class _CseSecondState extends State<CseSecond> {
  late Future<List<FirebaseFile>> futureFiles;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseApi.listAll('computer_Science/second/');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          title: "Notes".text.make(),
        ),
        body: FutureBuilder<List<FirebaseFile>>(
          future: futureFiles,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Some error occurred!'));
                } else {
                  final files = snapshot.data!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // buildHeader(files.length),
                      const SizedBox(height: 12),
                      Expanded(
                        child: ListView.builder(
                          itemCount: files.length,
                          itemBuilder: (context, index) {
                            final file = files[index];

                            return buildFile(context, file);
                          },
                        ),
                      ),
                    ],
                  );
                }
            }
          },
        ),
      );

  Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
      leading: ClipOval(
          child: Icon(
        Icons.picture_as_pdf,
        size: 50,
      )),
      title: Text(
        file.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
      onTap: () async {
        await FirebaseApi.downloadFile(file.ref);

        final snackBar = SnackBar(
          content: Text('Downloaded ${file.name}'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });

  Widget buildHeader(int length) => ListTile(
        tileColor: Colors.blue,
        leading: Container(
          width: 52,
          height: 52,
          child: Icon(
            Icons.file_copy,
            color: Colors.white,
          ),
        ),
        title: Text(
          '$length Files',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );
}
