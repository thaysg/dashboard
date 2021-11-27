import 'package:dashboard/routes/app_pages.dart';
import 'package:dashboard/screens/login/login_page.dart';
import 'package:dashboard/screens/settings/settings_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './main_app_controller.dart';

class MainAppPage extends GetView<MainAppController> {
  const MainAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (_) {
      final controller = Get.put(SettingsController());

      return GetMaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          /* maxWidth: 1200,
          minWidth: 450, */
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
        ),
        debugShowCheckedModeBanner: false,
        title: "DashBoard",
        theme: controller.theme,
        home: const LoginPage(),
        getPages: AppPages.routes,
      );
    });
  }
}
