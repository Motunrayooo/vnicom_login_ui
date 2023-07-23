import 'package:flutter/material.dart';
import 'package:vnicom_test/themes/app_icons.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';
import '../ui_helper/ui_helper.dart';

class PrimaryCardInfoTile extends StatelessWidget {
  PrimaryCardInfoTile({
    super.key,
    required this.leading,
    required this.title,
  });

  final String title;
  final String leading;
  bool isTrailIcon = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.bodyExtraSmall(),
        ),
        UiHelper.verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leading,
              style: AppTextStyle.bodyMedium()
            ),
             Row(
              children: [
                Image(
                  image: AssetImage(AppIcons.masterCardIcon,),
                ),
                UiHelper.horizontalSpaceSmall,
                const Image(
                  color: AppColors.primary,
                  image: AssetImage(
                    "assets/images/cardIcon.png",
                  ),
                ),
              ],
            )
          ],
        ),
        primaryDivider(),
      ],
    );
  }
}
