import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/items/product_details_items/product_details_buttons.dart';
import 'package:shopping_app/providers/product_provider.dart';

class ProductDetails extends StatelessWidget {
  final String productId;
  ProductDetails(this.productId);

  Widget build(BuildContext context) {
    final loadedProduct = Provider.of<ProductProvider>(context);
    final singleProduct =
        loadedProduct.items.firstWhere((element) => element.id == productId);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: CachedNetworkImage(
                imageUrl: singleProduct.image,
                placeholder: (_, error) => Container(
                    width: 50,
                    height: 50,
                    child: Center(child: CircularProgressIndicator())),
                fit: BoxFit.cover,
              ),
              color: Colors.green,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            singleProduct.title,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.stars,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width - 50,
                            child: Text(
                              singleProduct.description,
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${singleProduct.price}\$",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8),
                            child: Text(
                              "1000\$",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Chip(
                            avatar: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                            ),
                            label: Text(singleProduct.category[0]),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                            ),
                            label: Text(singleProduct.category[1]),
                          )
                        ],
                      ),
                    ),
                    ProductDetailsButtons()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
