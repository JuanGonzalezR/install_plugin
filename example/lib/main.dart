import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
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
        body: FlatButton(
          onPressed: (){
            InstallPlugin.installApk('file path', 'appid')
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
