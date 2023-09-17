import 'package:stacked/stacked.dart';

class SignupViewModel extends BaseViewModel {
  int currentStep = 0;

  void goToStep(int step) {
    if (step >= 0 && step < 4) {
      currentStep = step;
      notifyListeners();
    }
  }

  void goToNextStep() {
    if (currentStep < 3) {
      currentStep++;
      notifyListeners();
    }
  }

  void goToPreviousStep() {
    if (currentStep > 0) {
      currentStep--;
      notifyListeners();
    }
  }
}
