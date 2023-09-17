import 'package:social_services/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:social_services/app/app.locator.dart';
import 'package:social_services/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authenticationService = locator<AuthenticationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    if (_authenticationService.userLoggedIn()) {
      _navigationService.replaceWith(Routes.homeView);
    } else {
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}
