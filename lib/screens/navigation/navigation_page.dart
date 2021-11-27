import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:dashboard/theme/color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './navigation_controller.dart';

class NavigationPage extends GetView<NavigationController> {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }
    return GetBuilder<NavigationController>(
      builder: (controller) {
        return Scaffold(
          body: controller.pages[controller.tabIndex],
          bottomNavigationBar: CircleBottomNavigationBar(
            initialSelection: controller.tabIndex,
            barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
            arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
            itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
            itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
            circleOutline: 15.0,
            shadowAllowance: 0.0,
            circleSize: 50.0,
            blurShadowRadius: 50.0,
            circleColor: AppColors.primary,
            barBackgroundColor: AppColors.white,
            textColor: AppColors.darkTheme,
            activeIconColor: AppColors.white,
            inactiveIconColor: AppColors.primary,
            tabs: controller.getTabsData(),
            onTabChangedListener: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}
