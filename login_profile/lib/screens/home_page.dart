import 'package:flutter/material.dart';
import 'package:flutter_app/childItems/user_list_item.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/models/dummy_users_list.dart';
import 'package:flutter_app/screens/profile_screen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });


  }

  final mainLister = DUMMY_CATEGORIES.map((e) => UserListItem(e.name,e.imgUrl)).toList();
   int totalMembers = DUMMY_CATEGORIES.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:30,bottom: 20),
              child: Text("The Mobile Team" , style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Text("Total Members $totalMembers"),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: DUMMY_CATEGORIES.map((e) => GestureDetector(
                  child: UserListItem(e.name,e.imgUrl),
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ProfileScreen(name: e.name,email: e.email,imgUrl: e.imgUrl,phoneNumber: e.phoneNumber)
                    ) );
                },
              )
              ).toList(),
            ),
          ],
        ),
      ),
      //body: ProfileScreen(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        selectedItemColor: Colors.white,
        elevation: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('My Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
