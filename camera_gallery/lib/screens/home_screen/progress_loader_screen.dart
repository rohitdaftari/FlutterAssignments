import 'dart:async';

import 'package:flutter/material.dart';

class ProgressLoaderScreen extends StatefulWidget {
  const ProgressLoaderScreen({Key key}) : super(key: key);

  @override
  _ProgressLoaderScreenState createState() => _ProgressLoaderScreenState();
}

class _ProgressLoaderScreenState extends State<ProgressLoaderScreen> {
  bool isVisible = false;

  void loaderOperation() {
    setState(() {
      isVisible = true;
      Future.delayed(Duration(seconds: 3), turnOffLoader);
    });
  }

  void turnOffLoader() {
    setState(() {
      isVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Loader"),
      ),
      body: Container(
        color: Colors.red,
        child: Container(
          child: Column(
            children: [
              Center(
                  child: ElevatedButton(
                child: Text("Start Progress Loader"),
                onPressed: loaderOperation,
              )),
              Visibility(
                  visible: isVisible, child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
