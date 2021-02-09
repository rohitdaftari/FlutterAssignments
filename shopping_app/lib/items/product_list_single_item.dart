import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_full_details.dart';

class ProductSingleList extends StatelessWidget {
  final String productId;
  final String title;
  final String imgUrl;
  ProductSingleList(this.productId, this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: ValueKey(productId),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductFullDetails(productId)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(2),
              bottomLeft: Radius.circular(2),
              bottomRight: Radius.circular(50)),
        ),
        margin: EdgeInsets.all(10),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: Colors.black.withAlpha(200),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                  bottomRight: Radius.circular(50)),
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                  image: NetworkImage(imgUrl))),
          child: Center(
              child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
