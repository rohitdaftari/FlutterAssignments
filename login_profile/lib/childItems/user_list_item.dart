import 'package:flutter/material.dart';
class UserListItem extends StatelessWidget {
  final String name;
  final String imgUrl;

  UserListItem(this.name,this.imgUrl);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(5),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(imgUrl),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(name,style: TextStyle(fontSize: 20)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
