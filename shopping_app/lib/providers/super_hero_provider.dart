import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shopping_app/requests/superhero_request.dart';
import '../models/superhero.dart';

class SuperHeroProvider with ChangeNotifier {
  Superhero superhero;
  String errorMessage;
  bool loading = false;

  Future<bool> fetchSupersHero(id) async {
    setloading(true);

    await SuperheroRequest(id).fetchSuperhero().then((data) {
      setloading(false);

      if (data.statusCode == 200) {
        setSuperhero(Superhero.fromJson(json.decode(data.body)));
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        setMessage(result['message']);
      }
    });

    return isSuperhero();
  }

  void setloading(value) {
    loading = value;
    notifyListeners();
  }

  void setSuperhero(value) {
    superhero = value;
    notifyListeners();
  }

  Superhero getSuperhero() {
    return superhero;
  }

  void setMessage(value) {
    errorMessage = value;
    notifyListeners();
  }

  String getMessage() {
    return errorMessage;
  }

  bool isSuperhero() {
    return superhero != null ? true : false;
  }

  bool isLoading() {
    return loading;
  }
}
