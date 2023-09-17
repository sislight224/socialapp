import 'package:social_services/app/app.locator.dart';
import 'package:social_services/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BalancePaymentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goToDeposit() {
    _navigationService.navigateToDepositView();
  }

  void goBack() {
    _navigationService.back();
  }
}
