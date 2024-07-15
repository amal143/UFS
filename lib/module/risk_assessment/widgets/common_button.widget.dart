import 'package:flutter/material.dart';
import 'package:ufssample/module/risk_assessment/widgets/common_text.widget.dart';

class commonButton extends StatelessWidget {
  const commonButton({
    super.key,
    required this.width,
    required this.color,
    required this.title,
    required this.titleColor,
    required this.onTap,
  });

  final double width;
  final Color color;
  final String title;
  final Color titleColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 56,
        decoration: BoxDecoration(color: color),
        child: Center(
          child: CommonText(
              title: title,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: titleColor),
        ),
      ),
    );
  }
}
