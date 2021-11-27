import 'package:dashboard/routes/app_pages.dart';
import 'package:dashboard/screens/settings/widgets/header_menu.dart';
import 'package:dashboard/screens/settings/widgets/menu_widget.dart';
import 'package:dashboard/screens/settings/widgets/theme_switch.dart';
import 'package:dashboard/theme/color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          //padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.center,
              rowCrossAxisAlignment: CrossAxisAlignment.center,
              // rowPadding: const EdgeInsets.all(24),
              //columnPadding: const EdgeInsets.all(24),
              layout: ResponsiveWrapper.of(context).isSmallerThan("4K")
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  child: Column(
                    children: [
                      HeaderMenu(
                        onTap: () {},
                        myWidget: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 70,
                          child: Icon(
                            Icons.person,
                            color: AppColors.primary,
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              MenuWidget(
                                onTap: () {},
                                iconData: Icons.home,
                                title: 'Início',
                              ),
                              MenuWidget(
                                onTap: () {
                                  Get.toNamed(Routes.profile);
                                },
                                iconData: Icons.person,
                                title: 'Perfil',
                              ),
                              MenuWidget(
                                onTap: () {
                                  //Get.toNamed(Routes.creditCard);
                                },
                                iconData: Icons.credit_card,
                                title: 'Configurar Cartões',
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: ThemeSwitch(),
                              ),
                              const Divider(),
                              MenuWidget(
                                onTap: () {},
                                iconData: Icons.help,
                                title: 'Ajuda',
                              ),
                              MenuWidget(
                                onTap: () {},
                                iconData: Icons.store,
                                title: 'Sobre',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
