import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

class ReUseAbleButton extends StatelessWidget {
  ReUseAbleButton(
      {super.key, required this. label, this.onPress});

  VoidCallback? onPress;
  String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.07,
          width: MediaQuery
              .of(context)
              .size
              .height * 0.5,
          color: AppColors.primary,
          child: Center(
            child: Text(
              label,
              style: AppTextStyle.bodyMediumPlus()
            ),
          ),
        ),
      ),
    );
  }
}