import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

class UiHelper {

  //vertical spacing
  static const Widget verticalSpaceExtraSmall = SizedBox(
    height: 10.0,
  );
  static const Widget verticalSpaceSmall =  SizedBox(
    height: 15.0,
  );
  static const Widget verticalSpaceMedium = SizedBox(
    height: 25.0,
  );
  static const Widget verticalSpaceMediumPlus = SizedBox(
    height: 40.0,
  );
  static const Widget verticalSpaceLarge = SizedBox(
    height: 55.0,
  );

  //horizontal spacing
  static const Widget horizontalSpaceSmall = SizedBox(
    width: 15.0,
  );
  static const Widget horizontalSpaceMedium = SizedBox(
    width: 30.0,
  );
  static const Widget horizontalSpaceLarge = SizedBox(
    width: 70.0,
  );


}

Divider primaryDivider() {
  return const Divider(
    color: AppColors.secondaryGrey,
    thickness: 2.0,
  );
}


Text labelText(String label) => Text(
  label,
  style: AppTextStyle.bodyExtraSmall(),
);

void showSnacksBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text(
        "please check email and password field",
      ),
      action: SnackBarAction(
          label: "Dismiss",
          onPressed: () {
            Navigator.pop(context);
          }),
    ),
  );
}

