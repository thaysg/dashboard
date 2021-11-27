import 'package:dashboard/shared/custom_app_bar.dart';
import 'package:dashboard/theme/images.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './financial_controller.dart';

class FinancialPage extends GetView<FinancialController> {
  const FinancialPage({Key? key}) : super(key: key);

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
      body: Container(),
    );
  }
}
