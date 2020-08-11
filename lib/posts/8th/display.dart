import 'package:flutter/material.dart';

import 'package:round_ui_kit/constants.dart';
import 'package:round_ui_kit/coustom_container.dart';
import 'package:round_ui_kit/coustom_switch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkmode = false;

  int selected = 0;
  void _onItemTaped(int i) {
    setState(() {
      selected = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkmode ? kdarktheameColor : klighttheameColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: CoustomContainer(
          isDarkmode: isDarkmode,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: selected == 0
                        ? kprimaryColor2
                        : kprimaryColor1.withOpacity(.5),
                  ),
                  onPressed: () {
                    _onItemTaped(0);
                  }),
              IconButton(
                  icon: Icon(
                    Icons.dashboard,
                    color: selected == 1
                        ? kprimaryColor2
                        : kprimaryColor1.withOpacity(.5),
                  ),
                  onPressed: () {
                    _onItemTaped(1);
                  }),
              IconButton(
                  icon: Icon(
                    Icons.contacts,
                    color: selected == 2
                        ? kprimaryColor2
                        : kprimaryColor1.withOpacity(.5),
                  ),
                  onPressed: () {
                    _onItemTaped(2);
                  }),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          Center(
              child: Text(
            "Custom Navigation Bar Part 1",
            style: isDarkmode ? kDarkHeadingText : kLightHeadingText,
          )),
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
    );
  }
}
