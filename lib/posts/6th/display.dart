import 'package:flutter/material.dart';
import 'package:round_ui_kit/coustom_switch.dart';
import 'package:round_ui_kit/constants.dart';
import 'package:round_ui_kit/coustom_container.dart';
import 'package:round_ui_kit/coustom_button.dart';
import 'package:round_ui_kit/round_text_field.dart';
//  dependencies:
//     flutter:
//       sdk: flutter
//     round_ui_kit:
//         git: https://github.com/yakothari25/round_ui_kit
class Uikit extends StatefulWidget {
  @override
  _UikitState createState() => _UikitState();
}

class _UikitState extends State<Uikit> {
  bool isDarkmode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkmode ? kdarktheameColor : klighttheameColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CoustomContainer(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 36),
                margin: EdgeInsets.symmetric(horizontal: 20),
                isDarkmode: isDarkmode,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add a new card",
                      style: isDarkmode ? kDarkHeadingText : kLightHeadingText,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    RoundTextField(
                      hintText: "Card number...",
                      isdarkmode: isDarkmode,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundTextField(
                      hintText: "Owner name",
                      isdarkmode: isDarkmode,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: RoundTextField(
                            hintText: "Exp. date",
                            isdarkmode: isDarkmode,
                            textInputType: TextInputType.datetime,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: RoundTextField(
                            hintText: "CVC",
                            isdarkmode: isDarkmode,
                            textInputType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
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
              SizedBox(
                height: 40,
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
      ),
    );
  }
}
