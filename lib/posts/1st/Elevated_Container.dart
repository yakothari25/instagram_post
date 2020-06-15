import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: 245,
            width: 202,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
              boxShadow: [
                BoxShadow(
                  offset: Offset(20, 20),
                  blurRadius: 33,
                  color: Color(0xFFD3D3D3).withOpacity(.84),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
