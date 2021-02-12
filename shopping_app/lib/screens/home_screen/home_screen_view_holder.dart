import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:shopping_app/screens/home_screen/api_home_screen.dart';
import 'package:shopping_app/screens/home_screen/local_home_screen.dart';

class HomeScreenViewHolder extends StatefulWidget {
  HomeScreenViewHolder({Key key}) : super(key: key);

  @override
  _HomeScreenViewHolderState createState() => _HomeScreenViewHolderState();
}

class _HomeScreenViewHolderState extends State<HomeScreenViewHolder> {
  List<Widget> _pages = [LocalHomeScreen(), ApiHomeScreen()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(FontAwesome5.surprise), title: Text("Super Heros"))
        ],
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
