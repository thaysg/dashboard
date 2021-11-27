import 'package:dashboard/routes/app_pages.dart';
import 'package:dashboard/screens/login/widgets/login_widget.dart';
import 'package:dashboard/shared/logo.dart';
import 'package:dashboard/theme/color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkTheme,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.center,
              rowCrossAxisAlignment: CrossAxisAlignment.center,
              rowPadding: const EdgeInsets.all(24),
              columnPadding: const EdgeInsets.all(24),
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                const ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Logo(),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: LoginWidget(
                    onTapButton: () {
                      Get.offAndToNamed(Routes.navigation);
                    },
                    onTapText: () {
                      Get.toNamed(Routes.signup);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
