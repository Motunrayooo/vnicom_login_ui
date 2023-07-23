import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';


class AppTextForm extends StatelessWidget {
  AppTextForm({super.key,
    this.hintText,
    this.validator,
    this.controller,
    this.keyboardType,
    this.suffixIcon,
    this.obscureText,
  });

  String? hintText;
  String? Function(String?)? validator;
  TextEditingController? controller;
  TextInputType? keyboardType;
  Widget? suffixIcon;
  bool? obscureText;





  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.bodyExtraSmall(),
        suffixIcon: suffixIcon,
        ),
    );
  }
}
