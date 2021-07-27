import 'package:flutter/material.dart';
import 'package:firebase_login/common_widgets/custom_ElevatedButton.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Scaffold widget to build the layout
        appBar: AppBar(
          //top app bar
          title: Text('Flutter & graphQL'), //app bar title
          elevation: 10.0, //shadow
        ),
        //body: _buildContent(),  //calls private function which builds layout //Currently disabled due to access issues with Navigator.push(context,
      body: Text('Hello User!'),
      );
  }
}