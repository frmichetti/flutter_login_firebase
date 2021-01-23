import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double height;
  final double width;
  final Widget icon;

  const CircleButton(
      {Key key,
      this.label = "",
      this.backgroundColor,
      this.textColor = Colors.white,
      this.borderColor,
      this.height = 55,
      this.width, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor == null
              ? Theme.of(context).accentColor
              : backgroundColor,
          borderRadius: BorderRadius.circular(40),
          border: borderColor == null ? null : Border.all(color: borderColor)),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          icon == null ? Container() : icon,
          Container(width: 7,),
          Text(
            label,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
