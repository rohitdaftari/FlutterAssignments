import 'package:flutter/material.dart';

class ProductDetailsButtons extends StatelessWidget {
  const ProductDetailsButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Container(
              height: 60,
              color: Colors.yellow,
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.shopping_cart),
                    ),
                    Text("Add To Cart")
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Container(
              height: 60,
              color: Colors.black,
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.show_chart,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "BUY NOW",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
            )
          ],
        ),
      ),
    );
  }
}
