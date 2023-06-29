import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Creating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating The Directories'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Directory appDocumentsDir =
                await getApplicationDocumentsDirectory();
            String newDirPath = '${appDocumentsDir.path}/new_directory';
            Directory newDirectory = Directory(newDirPath);
            newDirectory.create();

            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Directory Created'),
                  content: Text('New directory created at: $newDirPath'),
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
          child: Text('Create Directory'),
        ),
      ),
    );
  }
}
