import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/superhero.dart';

class SuperHeroProvider with ChangeNotifier {
  List<Superhero> itemHero;

  List<Superhero> get(heros) {
    return [...heros];
  }

  Future fetchSupersHerobyName(String name) async {
    String url =
        "https://www.superheroapi.com/api.php/3101680079935001/search/$name";
    try {
      final http.Response response = await http.get(url);
      Map<String, dynamic> yieldData = json.decode(response.body);
      //print(yieldData);
      final List<dynamic> listSuperhero = yieldData['results'];
      final List<Superhero> loadedSearch = [];
      print("Search Result Lenght : " + listSuperhero.length.toString());
      listSuperhero.forEach((superHero) {
        print(superHero['id']);
        print(superHero['name']);
        loadedSearch.add(Superhero(
            id: superHero['id'].toString(),
            name: superHero['name'].toString()));
      });
      print(loadedSearch);
      itemHero = loadedSearch;
      notifyListeners();
    } catch (error) {
      throw (error.toString());
    }
  }
}
