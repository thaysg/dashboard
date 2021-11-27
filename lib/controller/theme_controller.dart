import 'package:dashboard/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final box = GetStorage();
  bool get isDark => box.read('darkmode') ?? false;
  ThemeData get theme => isDark
      ? ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.darkTheme,
        )
      : ThemeData.light();
  void changeTheme(bool val) => box.write('darkmode', val);
}
