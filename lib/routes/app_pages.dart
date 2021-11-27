import 'package:dashboard/screens/client/client_bindings.dart';
import 'package:dashboard/screens/client/client_page.dart';
import 'package:dashboard/screens/financial/financial_bindings.dart';
import 'package:dashboard/screens/financial/financial_page.dart';
import 'package:dashboard/screens/home/home_bindings.dart';
import 'package:dashboard/screens/home/home_page.dart';
import 'package:dashboard/screens/login/login_bindings.dart';
import 'package:dashboard/screens/login/login_page.dart';
import 'package:dashboard/screens/navigation/navigation_bindings.dart';
import 'package:dashboard/screens/navigation/navigation_page.dart';
import 'package:dashboard/screens/profile/profile_page.dart';
import 'package:dashboard/screens/registration/registration_bindings.dart';
import 'package:dashboard/screens/registration/registration_page.dart';
import 'package:dashboard/screens/selling/selling_bindings.dart';
import 'package:dashboard/screens/selling/selling_page.dart';
import 'package:dashboard/screens/settings/settings_bindings.dart';
import 'package:dashboard/screens/settings/settings_page.dart';
import 'package:dashboard/screens/signup/signup_bindings.dart';
import 'package:dashboard/screens/signup/signup_page.dart';
import 'package:dashboard/screens/profile/profile_bindings.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.login,
      page: () => const LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SignupPage(),
      binding: SignupBindings(),
    ),
    GetPage(
      name: _Paths.navigation,
      page: () => const NavigationPage(),
      binding: NavigationBindings(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: _Paths.registration,
      page: () => const RegistrationPage(),
      binding: RegistrationBindings(),
    ),
    GetPage(
      name: _Paths.financial,
      page: () => const FinancialPage(),
      binding: FinancialBindings(),
    ),
    GetPage(
      name: _Paths.settings,
      page: () => const SettingsPage(),
      binding: SettingsBindings(),
    ),
    GetPage(
      name: _Paths.selling,
      page: () => const SellingPage(),
      binding: SellingBindings(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => const ProfilePage(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: _Paths.client,
      page: () => const ClientPage(),
      binding: ClientBindings(),
    ),
  ];
}
