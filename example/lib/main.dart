import 'package:flutter/material.dart';

import 'package:install_plugin/install_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: TextButton(
          onPressed: () {
            InstallPlugin.installApk('file path')
                .then((result) {
              print('install apk $result');
            }).catchError((error) {
              print('install apk error: $error');
            });
          },
          child: Text('Running on: '),
        ),
      ),
    );
  }
}

// Removed custom FlatButton class as it's not needed.
