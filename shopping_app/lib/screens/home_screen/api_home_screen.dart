import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/super_hero_provider.dart';

class ApiHomeScreen extends StatefulWidget {
  const ApiHomeScreen({Key key}) : super(key: key);

  @override
  _ApiHomeScreenState createState() => _ApiHomeScreenState();
}

class _ApiHomeScreenState extends State<ApiHomeScreen> {
  TextEditingController _controller = TextEditingController();
  bool isLoading = false;
  bool isInit = true;
  Map responseMap;
  Future fetchData(int id) async {
    http.Response response;
    response = await http
        .get("https://www.superheroapi.com/api.php/3101680079935001/$id");
    if (response.statusCode == 200) {
      setState(() {
        responseMap = jsonDecode(response.body);
        print(responseMap);
      });
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (isInit) {
      setState(() {
        isLoading = true;
      });

      Provider.of<SuperHeroProvider>(context)
          .fetchSupersHero("batman")
          .then((_) => setState(() {
                isLoading = false;
              }));
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Container(
        decoration: BoxDecoration(
            image: responseMap == null
                ? null
                : DecorationImage(
                    image: NetworkImage(responseMap['image']['url']),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  )),
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
                responseMap == null
                    ? "Type random  Superhero id as Number"
                    : "Your Superhero => " + responseMap['name'],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.1)),
              child: TextField(
                controller: _controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Superhero Id",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  child: Text(
                    'Get Superhero',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {
                  fetchData(int.parse(_controller.text));
                },
              ),
            ),
            isLoading
                ? Container(
                    child: CircularProgressIndicator(),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
