import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class FormWidgetLogin extends StatelessWidget {
  const FormWidgetLogin({
    Key? key,
    this.user,
    this.userV,
    this.senha,
    this.senhaV,
  }) : super(key: key);
  final TextEditingController? user;
  final TextEditingController? senha;
  final FormFieldValidator<String>? userV;
  final FormFieldValidator<String>? senhaV;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'User',
          style: AppTextStyles.textLogin,
        ),
        TextFormField(
          style: const TextStyle(
            color: AppColors.white,
          ),
          controller: user,
          validator: userV,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.person,
              color: AppColors.white,
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Senha',
          style: AppTextStyles.textLogin,
        ),
        TextFormField(
          style: const TextStyle(
            color: AppColors.white,
          ),
          controller: senha,
          validator: senhaV,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: AppColors.white,
            ),
            hintText: 'Senha',
            hintStyle: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
