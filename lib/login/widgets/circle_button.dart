import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const CircleButton ({Key key, this.label = "", this.backgroundColor, this.textColor = Colors.white, this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor == null ? Theme.of(context).accentColor : backgroundColor,
        borderRadius: BorderRadius.circular(40),
        border: borderColor == null ? null : Border.all(color: borderColor)
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
