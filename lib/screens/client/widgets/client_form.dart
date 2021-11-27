import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';

class ClientMainForm extends StatelessWidget {
  const ClientMainForm({
    Key? key,
    this.cpf,
    this.cpfV,
    this.name,
    this.email,
    this.phone,
    this.nameV,
    this.emailV,
    this.phoneV,
  }) : super(key: key);
  final TextEditingController? cpf;
  final TextEditingController? name;
  final TextEditingController? email;
  final TextEditingController? phone;
  final FormFieldValidator<String>? cpfV;
  final FormFieldValidator<String>? nameV;
  final FormFieldValidator<String>? emailV;
  final FormFieldValidator<String>? phoneV;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome',
              style: AppTextStyles.textLogin.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.white
                    : AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: name,
              validator: nameV,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person_add,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'Nome',
                hintStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'CPF',
              style: AppTextStyles.textLogin.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.white
                    : AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.white
                    : AppColors.primary,
              ),
              controller: cpf,
              validator: cpfV,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.perm_contact_cal,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'CPF',
                hintStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'E-mail',
              style: AppTextStyles.textLogin.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.white
                    : AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: email,
              validator: emailV,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Celular',
              style: AppTextStyles.textLogin.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.white
                    : AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: phone,
              validator: phoneV,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.phone,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'Celular',
                hintStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
