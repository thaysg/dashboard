import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
    this.cpf,
    this.cpfV,
    this.name,
    this.email,
    this.senha,
    this.nameV,
    this.emailV,
    this.senhaV,
  }) : super(key: key);
  final TextEditingController? cpf;
  final TextEditingController? name;
  final TextEditingController? email;
  final TextEditingController? senha;
  final FormFieldValidator<String>? cpfV;
  final FormFieldValidator<String>? nameV;
  final FormFieldValidator<String>? emailV;
  final FormFieldValidator<String>? senhaV;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CPF',
          style: AppTextStyles.textLogin,
        ),
        TextFormField(
          style: const TextStyle(
            color: AppColors.white,
          ),
          controller: cpf,
          validator: cpfV,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.perm_contact_cal,
              color: AppColors.white,
            ),
            hintText: 'Digite o seu cpf',
            hintStyle: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Nome',
          style: AppTextStyles.textLogin,
        ),
        TextFormField(
          controller: name,
          validator: nameV,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.person_add,
              color: AppColors.white,
            ),
            hintText: 'Digite o seu Nome',
            hintStyle: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'E-mail',
          style: AppTextStyles.textLogin,
        ),
        TextFormField(
          controller: email,
          validator: emailV,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.email,
              color: AppColors.white,
            ),
            hintText: 'Digite o seu Email',
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
          controller: senha,
          validator: senhaV,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: AppColors.white,
            ),
            hintText: 'Digite sua senha',
            hintStyle: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
