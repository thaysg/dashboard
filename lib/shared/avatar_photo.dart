import 'package:dashboard/theme/color.dart';
import 'package:flutter/material.dart';

class AvatarPhoto extends StatelessWidget {
  const AvatarPhoto({Key? key, required this.onTap, required this.myWidget})
      : super(key: key);
  final VoidCallback onTap;
  final Widget myWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.darkTheme,
              radius: 50,
              child: CircleAvatar(
                  radius: 60, backgroundColor: Colors.white, child: myWidget),
            ),
            Positioned(
              top: 60,
              left: 63,
              child: GestureDetector(
                onTap: onTap,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.camera_alt_rounded,
                      size: 28,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
