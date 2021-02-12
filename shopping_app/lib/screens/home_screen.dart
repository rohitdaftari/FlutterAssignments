import 'package:flutter/material.dart';
import 'package:shopping_app/items/category_list_single_item.dart';
import 'package:shopping_app/items/data_search.dart';
import 'package:shopping_app/models/dummy_data.dart';
import '../items/home_screen_top_component.dart';

class HomeScreen extends StatelessWidget {
  final categoriesList = DUMMY_CATEGORIES.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeScreenTopComponent(),
          Expanded(
            child: ListView(
              children: DUMMY_CATEGORIES
                  .map((catData) =>
                      GridSingleItem(catData.title, catData.imgUrl))
                  .toList(),
              shrinkWrap: true,
            ),
          ),
        ],
      )),
    );
  }
}
