import 'package:dashboard/routes/app_pages.dart';
import 'package:dashboard/screens/registration/widgets/card_widget.dart';
import 'package:dashboard/shared/custom_app_bar.dart';
import 'package:dashboard/theme/images.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './registration_controller.dart';

class RegistrationPage extends GetView<RegistrationController> {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: CustomAppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset(
              AppImages.logo2,
              width: MediaQuery.of(context).size.width * .3,
              height: MediaQuery.of(context).size.height * .07,
            ),
          ),
        ),
      ),
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
                ResponsiveRowColumnItem(
                  rowFlex: 2,
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: CardWidget(
                            height: 180,
                            width: 180,
                            title: 'Cliente',
                            icon: Icons.person,
                            onTap: () {
                              Get.toNamed(Routes.client);
                            },
                          ),
                        ),
                        Expanded(
                          child: CardWidget(
                            height: 180,
                            width: 180,
                            title: 'Produto',
                            icon: Icons.shopping_cart,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: CardWidget(
                          height: 180,
                          width: 180,
                          title: 'Fornecedor',
                          icon: Icons.store,
                          onTap: () {},
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
