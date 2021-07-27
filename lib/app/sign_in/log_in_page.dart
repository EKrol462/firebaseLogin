import 'package:flutter/material.dart';
import 'package:firebase_login/common_widgets/custom_ElevatedButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login/homePage.dart';

class LoginPage extends StatelessWidget {
  //Use for testing username: testuser@gmail.com : 123456
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Scaffold widget to build the layout
        appBar: AppBar(
          //top app bar
          title: Text('Flutter & graphQL'), //app bar title
          elevation: 10.0, //shadow
        ),
        body: Column(
          children: [
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0,
                          2), // changes position of shadow  //first paramerter of offset is left-right //second parameter is top to down
                    ),
                  ]),
              child: new Row(
                children: <Widget>[
                  Flexible(
                    child: new TextField(
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 100,
                        onChanged: (value) {
                          email = value.toString().trim();
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.person),
                          labelText: 'Username',
                          hintText: 'Enter Your Username',
                          labelStyle: TextStyle(
                            color: Colors.indigo,
                          ),
                        )),
                  ),
                  Flexible(
                      child: new TextField(
                          obscureText: true,
                          maxLength: 100,
                          onChanged: (value) {
                            password = value;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.person),
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                            labelStyle: TextStyle(
                              color: Colors.indigo,
                            ),
                          ))),
                ],
              ),
            ),
            SizedBox(height: 16.0), //Empty space
            CustomElevatedButton(
                child: Text('Login'),
                color: Colors.indigo,
                borderRadius: 5,
                onPressed: () async {
                  try {
                    await _auth.signInWithEmailAndPassword(
                        email: email, password: password);

                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (contex) => HomePage(),
                      ),
                    );
                  } on FirebaseAuthException catch (e) {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                            title: Text("Login Failed, error:"),
                            content: Text('${e.message}')));
                  }
                })
          ],
        ));
  }
}
