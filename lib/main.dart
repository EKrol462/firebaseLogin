import 'package:flutter/material.dart';
import 'package:firebase_login/app/sign_in/mainPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Main function
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch:
            Colors.indigo, //Primary color of the theme affects appbar
      ),
      home: mainPage(),
    );
  }
}



     //home: mainPage(), //main homepage, found in lib/SignInPage.dart

