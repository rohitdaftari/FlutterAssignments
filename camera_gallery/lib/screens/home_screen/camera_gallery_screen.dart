import 'package:flutter/material.dart';

class CameraGalleryScreen extends StatelessWidget {
  const CameraGalleryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Camera and Gallery")),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG-PADUvE9v_cIHNZyUN4A4ZqlDv7-eMGjkw&usqp=CAU"),
            fit: BoxFit.cover,
          )),
          child: Column(children: [
            SizedBox(
              height: 200,
            ),
            Row(
              children: [
                RaisedButton(
                  onPressed: () => {},
                  child: Text("Take Picture from Camera"),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: [
                RaisedButton(
                  onPressed: () => {},
                  child: Text("Choose from Gallery"),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ]),
        ));
  }
}
