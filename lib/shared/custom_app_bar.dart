import 'package:dashboard/theme/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, this.onTap, this.actions, required this.title, this.leading})
      : super(key: key);
  final VoidCallback? onTap;
  final List<Widget>? actions;
  final Widget title;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading,
      elevation: 0,
      title: title,
      centerTitle: true,
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.darkTheme
          : AppColors.primary,
      actions: actions,
    );
  }
}
