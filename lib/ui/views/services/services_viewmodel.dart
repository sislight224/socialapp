import 'package:social_services/app/app.locator.dart';
import 'package:social_services/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ServicesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void gotoLoundary() {
    _navigationService.navigateToLaundaryView();
  }

  void goBack() {
    _navigationService.back();
  }

  void gotoProfile() {
    _navigationService.navigateToProfileView();
  }
}
