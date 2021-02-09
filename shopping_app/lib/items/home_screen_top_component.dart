import 'package:flutter/material.dart';

class HomeScreenTopComponent extends StatelessWidget {
  const HomeScreenTopComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10),
              child: Text(
                "Hey ! Rohit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                "Here are some Categories \nfor you to Shop the best Products",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
