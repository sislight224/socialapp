import 'package:social_services/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:social_services/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:social_services/ui/views/home/home_view.dart';
import 'package:social_services/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:social_services/ui/views/login/login_view.dart';
import 'package:social_services/services/authentication_service.dart';
import 'package:social_services/ui/views/signup/signup_view.dart';
import 'package:social_services/ui/views/fingerprintcheck/fingerprintcheck_view.dart';
import 'package:social_services/ui/views/services/services_view.dart';
import 'package:social_services/ui/views/laundary/laundary_view.dart';
import 'package:social_services/ui/views/laundary_dealer/laundary_dealer_view.dart';
import 'package:social_services/ui/views/profile/profile_view.dart';
import 'package:social_services/ui/views/your_account/your_account_view.dart';
import 'package:social_services/ui/views/your_orders/your_orders_view.dart';
import 'package:social_services/ui/views/become_provider/become_provider_view.dart';
import 'package:social_services/ui/views/settings/settings_view.dart';
import 'package:social_services/ui/views/password_manager/password_manager_view.dart';
import 'package:social_services/ui/views/privacy_policy/privacy_policy_view.dart';
import 'package:social_services/ui/views/notifications/notifications_view.dart';
import 'package:social_services/ui/views/family_contacts/family_contacts_view.dart';
import 'package:social_services/ui/views/balance_payment/balance_payment_view.dart';
import 'package:social_services/ui/views/deposit/deposit_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: FingerprintcheckView),
    MaterialRoute(page: ServicesView),
    MaterialRoute(page: LaundaryView),
    MaterialRoute(page: LaundaryDealerView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: YourAccountView),
    MaterialRoute(page: YourOrdersView),
    MaterialRoute(page: BecomeProviderView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: PasswordManagerView),
    MaterialRoute(page: PrivacyPolicyView),
    MaterialRoute(page: NotificationsView),
    MaterialRoute(page: FamilyContactsView),
    MaterialRoute(page: BalancePaymentView),
    MaterialRoute(page: DepositView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
