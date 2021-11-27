import 'package:dashboard/shared/button_widget.dart';
import 'package:dashboard/theme/color.dart';
import 'package:dashboard/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClientAddressForm extends StatelessWidget {
  const ClientAddressForm({
    Key? key,
    this.cep,
    this.cepV,
    this.address,
    this.number,
    this.district,
    this.city,
    this.addressV,
    this.numberV,
    this.districtV,
    this.cityV,
  }) : super(key: key);
  final TextEditingController? cep;
  final TextEditingController? address;
  final TextEditingController? number;
  final TextEditingController? district;
  final TextEditingController? city;
  final FormFieldValidator<String>? cepV;
  final FormFieldValidator<String>? addressV;
  final FormFieldValidator<String>? numberV;
  final FormFieldValidator<String>? districtV;
  final FormFieldValidator<String>? cityV;

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
              'CEP',
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
              controller: cep,
              validator: cepV,
              decoration: InputDecoration(
                icon: Icon(
                  FontAwesomeIcons.locationArrow,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'CEP',
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
              'Endereço',
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
              controller: address,
              validator: addressV,
              decoration: InputDecoration(
                icon: Icon(
                  FontAwesomeIcons.addressCard,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'Endereço',
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
              'Bairro',
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
              controller: district,
              validator: districtV,
              decoration: InputDecoration(
                icon: Icon(
                  FontAwesomeIcons.map,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'Bairro',
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
              'Cidade',
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
              controller: city,
              validator: cityV,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.location_city,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
                hintText: 'Cidade',
                hintStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ButtonWidget(
              onTap: () {},
              title: 'salvar'.toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
