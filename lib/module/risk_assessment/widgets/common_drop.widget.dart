import 'package:flutter/material.dart';
import 'package:ufssample/global/colors/colors.dart';

import 'common_text.widget.dart';

class CommonDropDown extends StatelessWidget {
  const CommonDropDown(
      {super.key,
      required this.size,
      required this.title,
      required this.onTap,
      required this.color,
      required this.icon});

  final Size size;
  final String title;
  final Function() onTap;
  final Color color;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.9,
        height: 56,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                title: title,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: kTxtBlue,
              ),
              icon
            ],
          ),
        ),
      ),
    );
  }
}
