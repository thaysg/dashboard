import 'package:dashboard/shared/button_widget.dart';
import 'package:dashboard/shared/form_widget.dart';
import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({
    Key? key,
    this.cpf,
    this.cpfV,
    this.name,
    this.email,
    this.senha,
    this.nameV,
    this.emailV,
    this.senhaV,
    required this.onTapButton,
    required this.onTapText,
  }) : super(key: key);
  final TextEditingController? cpf;
  final TextEditingController? name;
  final TextEditingController? email;
  final TextEditingController? senha;
  final FormFieldValidator<String>? cpfV;
  final FormFieldValidator<String>? nameV;
  final FormFieldValidator<String>? emailV;
  final FormFieldValidator<String>? senhaV;
  final VoidCallback onTapButton;
  final VoidCallback onTapText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: AppColors.darkTheme,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(
                'Signup'.toUpperCase(),
                style: AppTextStyles.titleLogin,
              ),
              const SizedBox(
                height: 24,
              ),
              const FormWidget(),
              const SizedBox(
                height: 24,
              ),
              ButtonWidget(
                onTap: onTapButton,
                title: 'Entrar'.toUpperCase(),
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: onTapText,
                child: Text(
                  'Já cadastrado? Faça login'.toUpperCase(),
                  style: AppTextStyles.textLogin,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
