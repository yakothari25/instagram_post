import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_posts/posts/3rd/Bottom_handler.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(size.width * 0.05, size.height * 0.07,
          size.width * 0.05, size.height * 0.03),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: size.width * 0.05,
              ),
              SvgPicture.asset(
                "assets/images/svg/back.svg",
                height: size.height * 0.03,
                color: Colors.white,
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              Text(
                "Pepsi",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.03,
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset(
            "assets/images/svg/pepsi cup.svg",
            height: size.height * 0.3,
          ),
          SizedBox(
            height: size.height * 0.15,
          ),
          Container(
            width: size.width * 1.5,
            height: size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Colors.white,
            ),
            child: BottomHandler(),
          ),
        ],
      ),
    );
  }
}


