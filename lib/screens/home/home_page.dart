import 'package:dashboard/routes/app_pages.dart';
import 'package:dashboard/shared/custom_app_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: CustomAppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Bem Vindo(a) Thays',
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: IconButton(
                  onPressed: () {
                    Get.offAndToNamed(Routes.login);
                  },
                  icon: const Icon(
                    Icons.logout_outlined,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container());
  }
}
