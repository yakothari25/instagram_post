import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/9th/round_bottom_nav_bar.dart';
import 'package:round_ui_kit/constants.dart';
import 'package:round_ui_kit/coustom_container.dart';
import 'package:round_ui_kit/coustom_switch.dart';
import 'package:round_ui_kit/file_downloader.dart';

class Screen1 extends StatefulWidget {
  final bool darkmode;

  const Screen1({Key key, this.darkmode = false}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  bool isDarkmode;
  double value = 20;

@override
  void initState() {
    isDarkmode = widget.darkmode;
    // TODO: implement initState
    super.initState();
  }  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: RoundBottomNavBar(
        isDarkmode: isDarkmode,
        index: 1,
      ),
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
                      style: isDarkmode
                          ? kDarkHeadingText
                          : kLightHeadingText,
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
