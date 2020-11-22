import 'package:flutter/material.dart';

class CusText extends StatelessWidget {
  CusText(
      {Key key,
      @required this.content,
      this.color = Colors.black,
      this.fontSize = 12.0,
      this.maxLines = 1})
      : super(key: key);

  final Color color;
  final double fontSize;
  final String content;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        height: 1.0,
      ),
    );
  }
}
