import 'package:flutter/material.dart';

class RiskAssesmentController extends ChangeNotifier {
  TextEditingController notesCtrl = TextEditingController();
  String mainVal = "";
  String subVal = "";
  onMainDropdownClicked(String val) {
    mainVal = val;
    notifyListeners();
  }

  onSubDropdownClicked(String val) {
    subVal = val;
    notifyListeners();
  }
}
