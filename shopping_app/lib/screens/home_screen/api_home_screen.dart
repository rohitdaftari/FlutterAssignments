import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/items/search_superhero/search_superhero_widget.dart';
import 'package:dio/dio.dart';
import 'package:shopping_app/providers/super_hero_provider.dart';

class ApiHomeScreen extends StatefulWidget {
  const ApiHomeScreen({Key key}) : super(key: key);

  @override
  _ApiHomeScreenState createState() => _ApiHomeScreenState();
}

class _ApiHomeScreenState extends State<ApiHomeScreen> {
  TextEditingController _controller = TextEditingController();
  void _getSuperHero() {
    if (_controller.text == '') {
      Provider.of<SuperHeroProvider>(context)
          .setMessage('Please Enter your username');
    } else {
      Provider.of<SuperHeroProvider>(context)
          .fetchSupersHero(_controller.text)
          .then((value) {
        if (value) {
          print(value);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10, top: 100),
              child: Text(
                "Hey Superhero !",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Type name of Superhero",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.1)),
              child: TextField(
                onChanged: (value) {
                  Provider.of<SuperHeroProvider>(context).setMessage(null);
                },
                controller: _controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    errorText:
                        Provider.of<SuperHeroProvider>(context).getMessage(),
                    border: InputBorder.none,
                    hintText: "Enter Superhero ID",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            MaterialButton(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  child: Provider.of<SuperHeroProvider>(context).isLoading()
                      ? CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          strokeWidth: 2,
                        )
                      : Text(
                          'Get Your Following Now',
                          style: TextStyle(color: Colors.white),
                        ),
                ),
                onPressed: () {
                  Provider.of<SuperHeroProvider>(context, listen: false);
                  _getSuperHero();
                })
          ],
        ),
      ),
    );
  }
}
