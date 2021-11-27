import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.onTap,
    required this.iconData,
    required this.title,
  }) : super(key: key);
  final VoidCallback onTap;
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.white
                  : AppColors.primary,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: AppTextStyles.menuText.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.white
                    : AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
