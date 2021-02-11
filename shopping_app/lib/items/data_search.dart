import 'package:flutter/material.dart';
import 'package:shopping_app/models/dummy_data.dart';

import 'category_list_single_item.dart';

class DataSearch extends SearchDelegate<String> {
  final categoriesList = DUMMY_CATEGORIES.toList();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => {close(context, null)},
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView(
      children: DUMMY_CATEGORIES
          .where((element) {
            return element.title.startsWith(query);
          })
          .map((catData) => GridSingleItem(catData.title, catData.imgUrl))
          .toList(),
      shrinkWrap: true,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (context, index) => ListTile(
              leading: DUMMY_CATEGORIES[index].icon,
              title: Text(DUMMY_CATEGORIES[index].title),
              onTap: () {
                query = DUMMY_CATEGORIES[index].title;
                showResults(context);
              },
            ));
  }
}
