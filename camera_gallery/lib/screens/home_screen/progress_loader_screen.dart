import 'package:flutter/material.dart';

class ProgressLoaderScreen extends StatefulWidget {
  const ProgressLoaderScreen({Key key}) : super(key: key);

  @override
  _ProgressLoaderScreenState createState() => _ProgressLoaderScreenState();
}

class _ProgressLoaderScreenState extends State<ProgressLoaderScreen> {
  final Duration duration = Duration(seconds: 3);

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
                child: RaisedButton(
                    child: Text("Start Progress Loader"), onPressed: () => {}),
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
