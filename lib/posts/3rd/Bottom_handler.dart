import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/3rd/SizeSelector.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomHandler extends StatefulWidget {
  const BottomHandler({
    Key key,
  }) : super(key: key);

  @override
  _BottomHandlerState createState() => _BottomHandlerState();
}

class _BottomHandlerState extends State<BottomHandler> {
  int quntity = 250;
  List<bool> isSelected = [false, true, false];
  List<int> quantityList = [110, 250, 500];

  void onSizeSelectorHandler(int index) {
    setState(() {
      isSelected = [false, false, false];
      isSelected[index] = true;
      quntity = quantityList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizeSelector(
              icon: "assets/images/svg/large.svg",
              text: "Small",
              index: 0,
              isSelected: isSelected[0],
              pressed: onSizeSelectorHandler,
            ),
            SizeSelector(
              icon: "assets/images/svg/medium.svg",
              text: "Medium",
              index: 1,
              isSelected: isSelected[1],
              pressed: onSizeSelectorHandler,
            ),
            SizeSelector(
              icon: "assets/images/svg/small.svg",
              text: "Large",
              index: 2,
              isSelected: isSelected[2],
              pressed: onSizeSelectorHandler,
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text.rich(
              TextSpan(
                text: quntity.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: "ml",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.height * 0.055,
              height: size.height * 0.055,
              decoration: BoxDecoration(
                color: Color(0xFF1C79D8),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF1C79D8),
                    blurRadius: size.height * 0.005,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/images/svg/bag.svg",color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
