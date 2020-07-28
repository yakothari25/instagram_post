import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/4th/constants.dart';
import 'package:instagram_posts/posts/4th/coustom_switch.dart';

class Uikit extends StatefulWidget {
  @override
  _UikitState createState() => _UikitState();
}

class _UikitState extends State<Uikit> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klighttheameColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomSwitch(
              value: status,
              width: 80,
              height: 40,
              activeBackgroundGradiant: blueGradiantLtoR,
              inactiveBackgroundColor: Colors.white,
              inactiveGradiant: blueGradiantTtoB,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  status = value;
                });
              },
            ),
            SizedBox(height: 12,),
            CustomSwitch(
              value: status,
              width: 80,
              height: 40,
              activeBackgroundGradiant: blueGradiantLtoR,
              inactiveBackgroundColor: kdarkbackgroundColor,
              inactiveGradiant: blueGradiantTtoB,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  status = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
