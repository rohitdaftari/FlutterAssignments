import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/items/product_list_single_item.dart';

import 'package:shopping_app/providers/product_provider.dart';

class ProductList extends StatelessWidget {
  final String title;

  ProductList({this.title});
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductProvider>(context);
    final products = productsData.items
        .where((element) => element.category.contains(title))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              itemBuilder: (ctx, i) => ProductSingleList(
                  products[i].id, products[i].title, products[i].image))),
    );
  }
}
