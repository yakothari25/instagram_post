import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/2nd/auto_Button.dart';

class NeumorphisomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEEAF6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AutoButton(),
          ],
        ),
      ),
    );
  }
}

