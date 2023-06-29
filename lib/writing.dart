import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Writing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Writing to the Files'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Directory appDocumentsDir =
                await getApplicationDocumentsDirectory();
            String documentsPath = appDocumentsDir.path;

            File file = File('$documentsPath/my_file.txt');
            String content = 'Hello, Scaler Topics this side!';
            file.writeAsString(content);

            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('File Writing'),
                  content: Text('Content written to file: $content'),
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
          child: Text('Write to File'),
        ),
      ),
    );
  }
}
