import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Reading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading the Files'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Directory appDocumentsDir =
                await getApplicationDocumentsDirectory();
            String documentsPath = appDocumentsDir.path;

            File file = File('$documentsPath/my_file.txt');
            String content = await file.readAsString();

            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('File Reading'),
                  content: Text('Content of the file:\n$content'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Read File'),
        ),
      ),
    );
  }
}
