import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryScreen extends StatefulWidget {
  const CameraGalleryScreen({Key key}) : super(key: key);

  @override
  _CameraGalleryScreenState createState() => _CameraGalleryScreenState();
}

class _CameraGalleryScreenState extends State<CameraGalleryScreen> {
  File _image;
  final picker = ImagePicker();

  Future getImageFromGalley() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Camera and Gallery")),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: _image == null
                ? NetworkImage(
                    "https://i.pinimg.com/originals/e5/89/95/e5899572ecace2b0895b36db7703a001.gif")
                : FileImage(_image),
            fit: BoxFit.cover,
          )),
          child: Column(children: [
            SizedBox(
              height: 200,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: getImageFromCamera,
                  child: Text("Take Picture from Camera"),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: getImageFromGalley,
                  child: Text("Choose from Gallery"),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ]),
        ));
  }
}
