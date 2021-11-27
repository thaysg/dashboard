import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({Key? key, required this.onTap, required this.myWidget})
      : super(key: key);
  final VoidCallback onTap;
  final Widget myWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: AppColors.primary,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 18, 8, 0),
            child: SizedBox(
              width: 100,
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.indigo.shade900,
                    radius: 45,
                    child: CircleAvatar(
                      radius: 40,
                      child: myWidget,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 65,
                    child: IconButton(
                      onPressed: onTap,
                      icon: const Icon(
                        Icons.mode_edit_outline_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Thays Garcia',
              style: AppTextStyles.nameText,
            ),
          ),
        ],
      ),
    );
  }
}
