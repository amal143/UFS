import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ufssample/global/colors/colors.dart';
import 'package:ufssample/module/risk_assessment/controller/risk_assesment.controller.dart';

import '../widgets/common_button.widget.dart';
import '../widgets/common_drop.widget.dart';
import '../widgets/common_text.widget.dart';
import '../widgets/sub_dropdown.widget.dart';

class RiskAssessment extends StatelessWidget {
  const RiskAssessment({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<RiskAssesmentController>(
        builder: (context, assesmentCtrl, child) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SvgPicture.asset(
              "assets/images/burger_menu.svg",
              width: 20,
              height: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  title: "Risk Assessment",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: kTxtBlue,
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonDropDown(
                  icon: const Icon(Icons.arrow_drop_down),
                  color: kLightblue,
                  onTap: () {},
                  size: size,
                  title: "Physical Hazard",
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonDropDown(
                  icon: const Icon(Icons.arrow_drop_down),
                  color: kLightblue,
                  onTap: () {},
                  size: size,
                  title: "Safety Hazard",
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonDropDown(
                  icon: assesmentCtrl.mainVal != "Chemical"
                      ? const Icon(Icons.arrow_drop_down)
                      : const Icon(Icons.arrow_drop_up),
                  color: kLightblue,
                  onTap: () {
                    if (assesmentCtrl.mainVal != "Chemical" ||
                        assesmentCtrl.mainVal == "") {
                      assesmentCtrl.onMainDropdownClicked("Chemical");
                    } else {
                      assesmentCtrl.onMainDropdownClicked("");
                    }
                  },
                  size: size,
                  title: "Chemical Hazard",
                ),
                if (assesmentCtrl.mainVal == "Chemical")
                  SubDropdownWidget(size: size),
                const SizedBox(
                  height: 10,
                ),
                CommonDropDown(
                  icon: const Icon(Icons.arrow_drop_down),
                  color: kLightblue,
                  onTap: () {
                    assesmentCtrl.onMainDropdownClicked("Biological");
                  },
                  size: size,
                  title: "Biological Hazard",
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonDropDown(
                  icon: const Icon(Icons.arrow_drop_down),
                  color: kLightblue,
                  onTap: () {},
                  size: size,
                  title: "Ergonomics Hazard",
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  maxLines: 5,
                  controller: assesmentCtrl.notesCtrl,
                  decoration: InputDecoration(
                      hintText: "Enter Notes",
                      hintStyle: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: kBlack))),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            commonButton(
              onTap: () {},
              width: size.width * 0.3,
              color: kBtnColor1,
              title: "Skip",
              titleColor: kBlack,
            ),
            commonButton(
              onTap: () {},
              width: size.width * 0.7,
              color: kBtnColor2,
              title: "Save",
              titleColor: kBlack,
            )
          ],
        ),
      );
    });
  }
}
