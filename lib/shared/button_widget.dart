import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        primary: AppColors.primary,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.textButonLogin,
          ),
        ),
      ),
      onPressed: onTap,
    );
  }
}
