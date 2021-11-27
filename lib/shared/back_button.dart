import 'package:dashboard/theme/color.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: AppColors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
