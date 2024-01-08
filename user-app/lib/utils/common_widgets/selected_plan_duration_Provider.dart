import 'package:flutter/foundation.dart';

class SelectedPlanProvider extends ChangeNotifier {
  String? selectedPlan;
  String? selectedDuration;

  void setSelectedPlan(String plan) {
    selectedPlan = plan;
    notifyListeners();
  }

  void setSelectedDuration(String duration) {
    selectedDuration = duration;
    notifyListeners();
  }
}
