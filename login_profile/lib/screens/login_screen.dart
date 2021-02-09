import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';

class LoginScreen extends StatelessWidget {
  final userName  = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150.0,
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              margin: EdgeInsets.all(20),
              child: Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/dq.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Please Login to Continue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: TextFormField(
                            controller: userName,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: TextFormField(
                            controller: password,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        margin: EdgeInsets.only(top: 30),
                        child: GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              color: Colors.deepOrange,
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              )),
                          onTap: () {
                            String usernameInput = userName.text;
                            String passwordInput = password.text;
                            if (usernameInput == "admin" && passwordInput == "admin"){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (BuildContext context) => HomePage())
                              );
                            }else{
                              showDialog<void>(
                                context: context,
                                barrierDismissible: true,
                                // false = user must tap button, true = tap outside dialog
                                builder: (BuildContext dialogContext) {
                                  return AlertDialog(
                                    title: Text('Error'),
                                    content: Text('Entered Username or Password is Incorrect . Please Enter correct Username and Password'),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.of(dialogContext)
                                              .pop(); // Dismiss alert dialog
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                          },
                        ),
                      ),
                      SizedBox(
                        height: 120.0,
                      ),
                    ],
                  ),
                ],
              )),
            ),

          ],
        ),
      ),
    );
  }
}
