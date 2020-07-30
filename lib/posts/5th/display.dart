import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/5th/constants.dart';
import 'package:instagram_posts/posts/5th/coustom_button.dart';

class Uikit extends StatefulWidget {
  @override
  _UikitState createState() => _UikitState();
}

class _UikitState extends State<Uikit> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: klighttheameColor,
              padding: EdgeInsetsDirectional.only(bottom: 44),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CoustomButton(
                    text: "Button text",
                    width: 140,
                    height: 56,
                    backgroundgradient: blueGradiantLtoR,
                    onPressed: () {
                      print("tapped");
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: kdarktheameColor,
              padding: EdgeInsetsDirectional.only(top: 44),
              child: Column(
                children: [
                  CoustomButton(
                    text: "Button text",
                    width: 344,
                    height: 56,
                    backgroundgradient: blueGradiantLtoR,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
