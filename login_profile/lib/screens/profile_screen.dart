import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String email;
  final String phoneNumber;

  ProfileScreen({this.name, this.imgUrl, this.email, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.deepOrange,
              child: Center(
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(imgUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         // Icon(Icons.phone),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(email,style: TextStyle(fontSize: 15)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: CircleAvatar(
            //           child: Icon(Icons.email),
            //         ),
            //       ),
            //       Text("rohitdaftari3@gmail.com",style: TextStyle(fontSize: 20)),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      child: Icon(Icons.phone),
                    ),
                  ),
                  Text(phoneNumber,style: TextStyle(fontSize: 20)),
                ],
              ),
            )

          ],
        ),

      ),
    );
  }
}
