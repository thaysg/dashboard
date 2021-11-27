import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.height,
    required this.width,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        height: height,
        width: width,
        child: Card(
          color: AppColors.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 70,
                color: AppColors.white,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: AppTextStyles.totalPaid,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
