import 'package:dashboard/theme/images.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Image.asset(
        AppImages.logo,
        //width: MediaQuery.of(context).size.width * 5,
      ),
    );
  }
}
