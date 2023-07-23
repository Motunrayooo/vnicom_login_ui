import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import '../themes/app_colors.dart';

class ToggleTab extends StatefulWidget {
  const ToggleTab({Key? key}) : super(key: key);

  @override
  State<ToggleTab> createState() => _ToggleTabState();
}

class _ToggleTabState extends State<ToggleTab> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: AppColors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(
          30.0,
        ),
      ),
      elevation: 3.0,
      child: Container(
        child: FlutterToggleTab(
            labels: const [
              "Credit Card",
              "Pay",
            ],
            icons: const [
              Icons.credit_card,
              Icons.apple,
            ],
            selectedLabelIndex: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            height: 80.0,
            width: 90.0,
            selectedBackgroundColors: const [
              AppColors.primary,
            ],
            unSelectedBackgroundColors: const [
              AppColors.white,
            ],
            borderRadius: 12.0,
            selectedTextStyle: const TextStyle(color: AppColors.white),
            unSelectedTextStyle: const TextStyle(color: AppColors.black),
            selectedIndex: index),
      ),
    );
  }
}
