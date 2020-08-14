import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/9th/display.dart';
import 'package:instagram_posts/posts/9th/screen1.dart';
import 'package:instagram_posts/posts/9th/screen2.dart';
import 'package:round_ui_kit/constants.dart';
import 'package:round_ui_kit/coustom_container.dart';

class RoundBottomNavBar extends StatefulWidget {
  final bool isDarkmode;
  final int index;
  const RoundBottomNavBar({Key key, this.isDarkmode = false, this.index})
      : super(key: key);
  @override
  _RoundBottomNavBarState createState() => _RoundBottomNavBarState();
}

class _RoundBottomNavBarState extends State<RoundBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CoustomContainer(
        isDarkmode: widget.isDarkmode,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: widget.index == 0
                      ? kprimaryColor2
                      : kprimaryColor1.withOpacity(.5),
                ),
                onPressed: () {
                  if (widget.index != 0) {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context,animation1, animation2) => HomePage(
                            darkmode: widget.isDarkmode,
                          ),
                        ));
                  }
                }),
            IconButton(
                icon: Icon(
                  Icons.dashboard,
                  color: widget.index == 1
                      ? kprimaryColor2
                      : kprimaryColor1.withOpacity(.5),
                ),
                onPressed: () {
                  if (widget.index != 1) {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context,animation1, animation2) => Screen1(
                            darkmode: widget.isDarkmode,
                          ),

                        ),
                        );
                  }
                }),
            IconButton(
                icon: Icon(
                  Icons.contacts,
                  color: widget.index == 2
                      ? kprimaryColor2
                      : kprimaryColor1.withOpacity(.5),
                ),
                onPressed: () {
                  if (widget.index != 2) {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context,animation1, animation2) => Screen2(
                            darkmode: widget.isDarkmode,
                          ),
                        ));
                  }
                }),
          ],
        ),
      ),
    );
  }
}
