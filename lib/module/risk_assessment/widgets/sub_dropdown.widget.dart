import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufssample/module/risk_assessment/widgets/common_drop.widget.dart';
import '../../../global/colors/colors.dart';
import '../controller/risk_assesment.controller.dart';
import 'form_details.widget.dart';

class SubDropdownWidget extends StatelessWidget {
  const SubDropdownWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Consumer<RiskAssesmentController>(
        builder: (context, assesmentCtrl, child) {
      return Column(
        children: [
          const SizedBox(
            height: 05,
          ),
          CommonDropDown(
              icon: assesmentCtrl.subVal != "Cleaning"
                  ? const Icon(Icons.arrow_drop_down)
                  : const Icon(Icons.arrow_drop_up),
              color: kWhite,
              size: size,
              title: "Cleaning Products",
              onTap: () {
                if (assesmentCtrl.subVal != "Cleaning" ||
                    assesmentCtrl.subVal == "") {
                  assesmentCtrl.onSubDropdownClicked("Cleaning");
                } else {
                  assesmentCtrl.onSubDropdownClicked("");
                }
              }),
          if (assesmentCtrl.subVal == "Cleaning") FormDetailsWidget(size: size),
          const SizedBox(
            height: 05,
          ),
          CommonDropDown(
            icon: assesmentCtrl.subVal != "Pesticide"
                ? const Icon(Icons.arrow_drop_down)
                : const Icon(Icons.arrow_drop_up),
            color: kWhite,
            size: size,
            title: "Pesticide",
            onTap: () {
              if (assesmentCtrl.subVal != "Pesticide" ||
                  assesmentCtrl.subVal == "") {
                assesmentCtrl.onSubDropdownClicked("Pesticide");
              } else {
                assesmentCtrl.onSubDropdownClicked("");
              }
            },
          ),
          if (assesmentCtrl.subVal == "Pesticide")
            FormDetailsWidget(size: size),
          const SizedBox(
            height: 05,
          ),
          CommonDropDown(
            icon: const Icon(Icons.arrow_drop_down),
            color: kWhite,
            size: size,
            title: "Asbestos",
            onTap: () {},
          ),
        ],
      );
    });
  }
}
