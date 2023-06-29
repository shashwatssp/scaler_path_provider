import 'dart:async';
import 'package:flutter/material.dart';
import 'package:scaler_path_provider/basic_usage.dart';
import 'package:scaler_path_provider/creating.dart';
import 'package:scaler_path_provider/deleting.dart';
import 'package:scaler_path_provider/reading.dart';
import 'package:scaler_path_provider/writing.dart';

class Demo extends StatefulWidget {
  Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Example App',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
        ),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return BasicUsage();
                    }),
                  );
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Basic Usage',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Creating();
                    }),
                  );
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Creating The Directories',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Reading();
                    }),
                  );
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Reading The Files',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Writing();
                    }),
                  );
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Writing To The Files',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Deleting();
                    }),
                  );
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Deleting The Files',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
