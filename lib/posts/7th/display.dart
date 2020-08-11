import 'package:flutter/material.dart';

import 'package:round_ui_kit/coustom_switch.dart';
import 'package:round_ui_kit/constants.dart';
import 'package:round_ui_kit/coustom_container.dart';
import 'package:round_ui_kit/file_downloader.dart';


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
  double value = 20;
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
                      "File Download...",
                      style: isDarkmode ? kDarkHeadingText : kLightHeadingText,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    FileDownloadIndicator(
                      filaname: "main.dart",
                      value: value / 100,
                      isDarkmode: isDarkmode,
                      iconAsset: "lib/posts/7th/document.svg",
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    FileDownloadIndicator(
                      filaname: "Material",
                      value: value / 100,
                      isDarkmode: isDarkmode,
                      iconAsset: "lib/posts/7th/document.svg",
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    FileDownloadIndicator(
                      filaname: "Round ui kit",
                      value: value / 100,
                      isDarkmode: isDarkmode,
                      iconAsset: "lib/posts/7th/document.svg",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Slider(
                value: value,
                onChanged: (val) {
                  setState(() {
                    value = val;
                  });
                },
                min: 0,
                max: 100,
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
