import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SizeSelector extends StatefulWidget {
  final String icon;
  final String text;
  final int val;
  final int index;
  final Function pressed;
  final bool isSelected;
  const SizeSelector({
    Key key,
    this.icon,
    this.text,
    this.val,
    this.index,
    this.pressed,
    this.isSelected,
  }) : super(key: key);

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        widget.pressed(widget.index);
      },
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            widget.icon,
            height: size.height * 0.05,
            color: widget.isSelected ? Color(0xFF1C79D8) : Color(0xFFC8C8C8),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              widget.text,
              style: TextStyle(
                color:
                    widget.isSelected ? Color(0xFF1C79D8) : Color(0xFFC8C8C8),
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
