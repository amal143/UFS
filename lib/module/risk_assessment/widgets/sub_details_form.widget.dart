import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../global/colors/colors.dart';

class SubDetailsForm extends StatelessWidget {
  const SubDetailsForm({super.key, required this.title, required this.size});
  final String title;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                  fontSize: 14, fontWeight: FontWeight.w400, color: kTxtBlue),
            ),
            SizedBox(
              width: size.width * 0.44,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    hintStyle: GoogleFonts.roboto(
                        fontSize: 14, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: kLightblue))),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
