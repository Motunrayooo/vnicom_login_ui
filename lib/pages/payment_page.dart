import 'package:flutter/material.dart';
import 'package:vnicom_test/themes/app_colors.dart';
import 'package:vnicom_test/themes/app_icons.dart';
import 'package:vnicom_test/themes/app_text_style.dart';
import 'package:vnicom_test/ui_helper/ui_helper.dart';
import 'package:vnicom_test/widgets/widgets.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isSwitched = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.01,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: AppColors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 120.0),
          child: Text("Payment", style: AppTextStyle.bodySmall()),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              primaryDivider(),
              UiHelper.verticalSpaceMedium,
              SizedBox(
                height: 20.0,
                child: ListTile(
                  leading: Text(
                    "For Payment",
                    style: AppTextStyle.bodySmall()
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "₦250,000",
                    style: AppTextStyle.bodySmall(),
                  ),
                ),
              ),
              UiHelper.verticalSpaceMedium,
              primaryDivider(),
              UiHelper.verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ToggleTab(),
                    UiHelper.verticalSpaceMedium,
                    labelText("Card number"),
                    AppTextForm(
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(
                            image: AssetImage(AppIcons.masterCardIcon),
                          ),
                          UiHelper.horizontalSpaceSmall,
                          Image(
                            color: AppColors.primary,
                            image: AssetImage(
                              AppIcons.cardIcon,
                            ),
                          ),
                        ],
                      ),
                    ),
                    UiHelper.verticalSpaceLarge,
                    labelText("Cardholder name"),
                    AppTextForm(),
                    UiHelper.verticalSpaceLarge,
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                labelText("CVC code:"),
                                AppTextForm(),
                              ],
                            ),
                          ),
                          UiHelper.horizontalSpaceLarge,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                labelText("Expiry date:"),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: AppTextForm(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    UiHelper.verticalSpaceMediumPlus,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Save card data for future payment",
                          style: AppTextStyle.bodyExtraSmall().copyWith(
                              fontSize: 13.0, color: AppColors.charcoalGrey),
                        ),
                        Switch(
                            value: isSwitched,
                            onChanged: (bool newValue) {
                              setState(() {
                                isSwitched = newValue;
                              });
                            }),
                      ],
                    ),
                    UiHelper.verticalSpaceSmall,
                    ReUseAbleButton(
                      label: 'Pay',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
