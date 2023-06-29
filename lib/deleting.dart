import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Deleting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deleting the Files'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Directory appDocumentsDir =
                await getApplicationDocumentsDirectory();
            String documentsPath = appDocumentsDir.path;

            File file = File('$documentsPath/my_file.txt');
            file.delete();

            Directory directory = Directory('$documentsPath/my_directory');
            directory.delete(recursive: true);

            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('File Deletion'),
                  content: Text('File and directory deleted successfully!'),
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
          child: Text('Delete Files'),
        ),
      ),
    );
  }
}
