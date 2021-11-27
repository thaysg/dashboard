import 'package:dashboard/screens/settings/settings_controller.dart';
import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return SimpleBuilder(builder: (_) {
      return Row(
        children: [
          controller.isDark
              ? const Icon(FontAwesomeIcons.moon)
              : const Icon(
                  FontAwesomeIcons.sun,
                  color: AppColors.primary,
                ),
          const SizedBox(
            width: 16,
          ),
          Text(
            'Tema',
            style: AppTextStyles.menuText.copyWith(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.white
                  : AppColors.primary,
            ),
          ),
          Switch(
            value: controller.isDark,
            onChanged: controller.changeTheme,
          ),
        ],
      );
    });
  }
}
