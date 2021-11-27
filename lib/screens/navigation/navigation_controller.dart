import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:dashboard/screens/financial/financial_page.dart';
import 'package:dashboard/screens/home/home_page.dart';
import 'package:dashboard/screens/registration/registration_page.dart';
import 'package:dashboard/screens/selling/selling_page.dart';
import 'package:dashboard/screens/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var tabIndex = 0;
  final List pages = [
    const HomePage(),
    const RegistrationPage(),
    const SellingPage(),
    const FinancialPage(),
    const SettingsPage(),
  ];

  changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  List<TabData> getTabsData() {
    return [
      TabData(
        icon: Icons.home,
        iconSize: 25.0,
        title: 'Home',
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      TabData(
        icon: Icons.app_registration_sharp,
        iconSize: 25,
        title: 'Cadastro',
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      TabData(
        icon: Icons.sell,
        iconSize: 25,
        title: 'Vendas',
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      TabData(
        icon: Icons.monetization_on,
        iconSize: 25,
        title: 'Financeiro',
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      TabData(
        icon: Icons.settings,
        iconSize: 25,
        title: 'Configurações',
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ];
  }
}
