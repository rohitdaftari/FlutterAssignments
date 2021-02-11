import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/super_hero_provider.dart';

class SearchbyNameListWidget extends StatelessWidget {
  const SearchbyNameListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listSearchedSuperheros = Provider.of<SuperHeroProvider>(context);
    final searchedHeros = listSearchedSuperheros.itemHero.toList();

    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: searchedHeros.length == 0 ? 0 : searchedHeros.length,
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(top: 50, bottom: 50, left: 10, right: 10),
            height: 20,
            width: 200,
            child: Center(
              child: Text(
                "" +
                    searchedHeros[index].name +
                    "\nHero Id : " +
                    searchedHeros[index].id,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ));
      },
    ));
  }
}
