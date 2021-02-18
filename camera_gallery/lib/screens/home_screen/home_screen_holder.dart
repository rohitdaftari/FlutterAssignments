import 'package:camera_gallery/screens/home_screen/camera_gallery_screen.dart';
import 'package:camera_gallery/screens/home_screen/progress_loader_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenHolder extends StatefulWidget {
  const HomeScreenHolder({Key key}) : super(key: key);

  @override
  _HomeScreenHolderState createState() => _HomeScreenHolderState();
}

class _HomeScreenHolderState extends State<HomeScreenHolder> {
  int _selectedIndex = 0;
  List<Widget> pages = [CameraGalleryScreen(), ProgressLoaderScreen()];

  switchPages(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: switchPages,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.camera), title: Text('Camera & Gallery')),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), title: Text('Progress Loader'))
        ],
        currentIndex: _selectedIndex,
      ),
      body: pages[_selectedIndex],
    );
  }
}
