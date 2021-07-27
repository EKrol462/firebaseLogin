import 'package:flutter/material.dart';

/*Reusable button 
  Call as:
   CustomElevatedButton(
           child: Text('Text Here),
           color: Colors.blue,
           borderRadius: 5,
           onPressed: () {},
         ),
*/

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    required this.child,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
  });

  Widget child;
  Color color;
  double borderRadius;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 70),
        textStyle: TextStyle(fontSize: 20, color: Colors.black),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        primary: color,
      ),
    );
  }
}
