import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.fontSize = 14,
      this.fontWeight,
      this.decoration,
      this.maxLines,
      this.fontFamily,
      this.textAlign});
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final int? maxLines;
  final String? fontFamily;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines,
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration,
          decorationThickness: 2,
          fontFamily: fontFamily,
          overflow: TextOverflow.ellipsis),
    );
  }
}
