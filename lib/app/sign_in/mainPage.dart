import 'package:flutter/material.dart';
import 'package:firebase_login/common_widgets/custom_ElevatedButton.dart';
import 'log_in_page.dart';


class mainPage extends StatelessWidget {
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
        body: Padding(
          padding: EdgeInsets.all(16.0), //padding widget
          child: Column(
              //Collumn widget, used to create a centered layout
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomElevatedButton(
                    child: Text('Sign in Here'),
                    color: Colors.indigo,
                    borderRadius: 5,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    }),
                CustomElevatedButton(
                    child: Text('Register'),
                    color: Colors.deepPurple,
                    borderRadius: 5,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    }),
              ]),
        ));
  }

//TODO: change widget from method into class for performance increase

  Widget _buildContent() {
    return Padding(
        padding: EdgeInsets.all(16.0), //padding widget
        child: Column(
            //Collumn widget, used to create a centered layout
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.0), //Empty space
              CustomElevatedButton(
                child: Text('Sign in Here'),
                color: Colors.blue,
                borderRadius: 5,
                onPressed: () {
                  /* 
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
              //disabled due to issue with access */
                },
              ),
              SizedBox(height: 8.0), //Empty space
              CustomElevatedButton(
                child: Text('Register'),
                color: Colors.indigo,
                borderRadius: 5,
                onPressed: () {},
              )
            ]));
  }
}

/*

        BottomNavigationBar(
        type: BottomNavigationBarType.fixed, 
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), 
        label: 'Home',
        ),
        
        BottomNavigationBarItem(icon: Icon(Icons.category),
        label: 'Home',
        ),
      ],
      ) 
      */
