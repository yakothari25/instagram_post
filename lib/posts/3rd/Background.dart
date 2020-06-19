import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/3rd/Body.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xFF0A5Ab1),
            Color(0xFF0C67C8),
            Color(0xFF1C79D8),
            Color(0xFF1C79D8),
            Color(0xFF1C79D8),
            Color(0xFF66AFF3),
            Color(0xFF51A1E6),
          ],
          stops: [
            0.0,
            0.05,
            0.1,
            0.5,
            0.9,
            0.95,
            1,
          ],
        ),
      ),
      child: Body(),
    );
  }
}