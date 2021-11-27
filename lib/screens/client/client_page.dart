import 'package:dashboard/screens/client/widgets/client_address_form.dart';
import 'package:dashboard/screens/client/widgets/client_form.dart';
import 'package:dashboard/shared/back_button.dart';
import 'package:dashboard/shared/custom_app_bar.dart';
import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/images.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './client_controller.dart';

class ClientPage extends GetView<ClientController> {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: CustomAppBar(
          leading: const CustomBackButton(),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
              child: Center(
                child: Text(
                  'Cadastro'.toUpperCase(),
                  style: AppTextStyles.titleLogin.copyWith(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.white
                        : AppColors.primary,
                  ),
                ),
              ),
            ),
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
                  rowFlex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: const [
                        ClientMainForm(),
                      ],
                    ),
                  ),
                ),
                const ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: ClientAddressForm(),
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
