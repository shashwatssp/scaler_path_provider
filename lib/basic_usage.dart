import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class BasicUsage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Usage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                Directory? appDocumentsDir =
                    await getApplicationDocumentsDirectory();
                if (appDocumentsDir != null) {
                  String documentsPath = appDocumentsDir.path;

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Application Documents Directory'),
                        content: Text(documentsPath),
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
                }
              },
              child: Text('Get Application Documents Directory'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                Directory? tempDir = await getTemporaryDirectory();
                if (tempDir != null) {
                  String tempPath = tempDir.path;

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Temporary Directory'),
                        content: Text(tempPath),
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
                }
              },
              child: Text('Get Temporary Directory'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                Directory? externalDir = await getExternalStorageDirectory();
                if (externalDir != null) {
                  String externalPath = externalDir.path;

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('External Storage Directory'),
                        content: Text(externalPath),
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
                }
              },
              child: Text('Get External Storage Directory'),
            ),
          ],
        ),
      ),
    );
  }
}
