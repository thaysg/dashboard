import 'package:dashboard/screens/login/widgets/form_widget_login.dart';
import 'package:dashboard/shared/button_widget.dart';
import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
    this.user,
    this.senha,
    this.userV,
    this.senhaV,
    required this.onTapButton,
    required this.onTapText,
  }) : super(key: key);
  final TextEditingController? user;
  final TextEditingController? senha;
  final FormFieldValidator<String>? userV;
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
                'Login'.toUpperCase(),
                style: AppTextStyles.titleLogin,
              ),
              const SizedBox(
                height: 24,
              ),
              const FormWidgetLogin(),
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
                  'Cadastrar-se'.toUpperCase(),
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
