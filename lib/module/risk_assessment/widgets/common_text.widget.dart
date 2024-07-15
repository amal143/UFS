import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.title,
      required this.fontSize,
      required this.fontWeight,
      required this.color});
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.dmSans(
          fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
