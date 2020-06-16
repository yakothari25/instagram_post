import 'package:flutter/material.dart';

class AutoButton extends StatefulWidget {
  const AutoButton({
    Key key,
  }) : super(key: key);

  @override
  _AutoButtonState createState() => _AutoButtonState();
}

class _AutoButtonState extends State<AutoButton> {
  bool taped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          taped = false;
        });
      },
      onTapDown: (_onTapdown) {
        setState(() {
          taped = true;
        });
      },
      child: Container(
        margin: EdgeInsets.all(20),
        height: 245,
        width: 202,
        decoration: taped
            ? BoxDecoration(
                color: Color(0xFFDEEAF6),
                borderRadius: BorderRadius.circular(29),
                border: Border.all(
                    width: 2,
                    style: BorderStyle.solid,
                    color: Color(0xFFFFFFFF).withOpacity(.90)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-1, -1),
                    blurRadius: 10,
                    color: Color(0xFFBECBD8),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFFFFFFF).withOpacity(0.6),
                    Color(0xFFDEEAF6),
                    Color(0xFFDEEAF6),
                    Color(0xFFDEEAF6).withOpacity(0.6),
                    Color(0xFFDEEAF6).withOpacity(0.6),
                    Color(0xFFDEEAF6).withOpacity(0.1),
                    Color(0xFF6687AB).withOpacity(0.6),
                  ],
                  stops: [
                    0.001,
                    0.021,
                    0.25,
                    0.5,
                    0.75,
                    0.989,
                    0.999,
                  ],
                ),
              )
            : BoxDecoration(
                color: Color(0xFFDEEAF6),
                borderRadius: BorderRadius.circular(29),
                border: Border.all(
                    width: 2,
                    style: BorderStyle.solid,
                    color: Color(0xFFFFFFFF).withOpacity(.90)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-15, -15),
                    blurRadius: 20,
                    color: Color(0xFFF3F9FF),
                  ),
                  BoxShadow(
                    offset: Offset(15, 15),
                    blurRadius: 20,
                    color: Color(0xFFBECBD8),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFFFFFF).withOpacity(0.6),
                    Color(0xFFDEEAF6).withOpacity(0.3),
                    Color(0xFFDEEAF6).withOpacity(0.6),
                    Color(0xFFDEEAF6).withOpacity(0.6),
                    Color(0xFFDEEAF6).withOpacity(0.6),
                    Color(0xFFDEEAF6).withOpacity(0.1),
                    Color(0xFF6687AB).withOpacity(0.6),
                  ],
                  stops: [
                    0.01,
                    0.011,
                    0.25,
                    0.5,
                    0.75,
                    0.989,
                    0.999,
                  ],
                ),
              ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Auto",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: taped ? Color(0xFF62B1F6) : Color(0xFF778899),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 70,
                child: Divider(
                  thickness: 5,
                  color: taped ? Color(0xFF62B1F6) : Color(0xFF778899),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
