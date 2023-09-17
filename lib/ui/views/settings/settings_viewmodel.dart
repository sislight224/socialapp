import 'package:social_services/app/app.locator.dart';
import 'package:social_services/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  bool notifications = true;
  void toggleNotifications(bool value) {
    if (notifications == false) {
      notifications = true;
      rebuildUi();
      print('Switch Button is ON');
    } else {
      notifications = false;
      rebuildUi();
      print('Switch Button is OFF');
    }
  }

  void goBack() {
    _navigationService.back();
  }

  void goToPasswordManager() {
    _navigationService.navigateToPasswordManagerView();
  }
}
