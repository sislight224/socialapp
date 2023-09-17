import 'package:social_services/app/app.locator.dart';
import 'package:social_services/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goBack() {
    _navigationService.back();
  }

  void goToYourAccount() {
    _navigationService.navigateToYourAccountView();
  }

  void goToYourOrders() {
    _navigationService.navigateToYourOrdersView();
  }

  void goToBecomeProvider() {
    _navigationService.replaceWithYourAccountView();
  }

  void goToSettings() {
    _navigationService.navigateToSettingsView();
  }

  void goToBalancePayment() {
    _navigationService.navigateToBalancePaymentView();
  }

  void goToPrivacyPolicy() {
    _navigationService.navigateToPrivacyPolicyView();
  }

  void goToHelp() {
    _navigationService.replaceWithYourAccountView();
  }
}
