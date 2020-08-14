import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/9th/round_bottom_nav_bar.dart';
import 'package:round_ui_kit/constants.dart';
import 'package:round_ui_kit/coustom_switch.dart';

class HomePage extends StatefulWidget {
  final bool darkmode;

  const HomePage({Key key, this.darkmode = false}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkmode;

  int selected = 0;
void initState() {
    isDarkmode = widget.darkmode;
    // TODO: implement initState
    super.initState();
  }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkmode ? kdarktheameColor : klighttheameColor,
      bottomNavigationBar: RoundBottomNavBar(
        isDarkmode: isDarkmode,
        index: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Custom Navigation Bar Part 2",
              style: isDarkmode ? kDarkHeadingText : kLightHeadingText,
            ),
            SizedBox(
              height: 20,
            ),
            CustomSwitch(
              value: isDarkmode,
              width: 80,
              height: 40,
              activeBackgroundGradiant: blueGradiantLtoR,
              inactiveBackgroundColor: Colors.white,
              inactiveGradiant: blueGradiantTtoB,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isDarkmode = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
