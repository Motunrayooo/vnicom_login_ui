import 'package:flutter/material.dart';
import 'package:vnicom_test/pages/payment_page.dart';
import 'package:vnicom_test/themes/app_colors.dart';
import 'package:vnicom_test/themes/app_icons.dart';
import 'package:vnicom_test/themes/app_text_style.dart';
import 'package:vnicom_test/ui_helper/ui_helper.dart';
import 'package:vnicom_test/widgets/app_text_Form.dart';
import 'package:vnicom_test/widgets/reusable_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _validation = GlobalKey<FormState>();
  bool visibility = true;

  String _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "please enter a password";
    } else if (value.length < 8) {
      return "password must be 8 character long";
    } else if (!_containLettersAndNumbers(value)) {
      return "password must contain both letters and numbers";
    } else {
      return "password accepted";
    }
  }

  bool _containLettersAndNumbers(String value) {
    final letters = RegExp(r'[a-zA-Z]');
    final numbers = RegExp(r'[0-9]');
    return letters.hasMatch(value) &&
        numbers.hasMatch(value) &&
        value.length >= 8;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _validation,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage(
                          AppIcons.loginPageBgIcon,
                        ),
                      ),
                    ),
                    UiHelper.verticalSpaceMediumPlus,
                    Text(
                      "Login",
                      style: AppTextStyle.bodyLarge(),
                    ),
                    UiHelper.verticalSpaceMedium,
                    AppTextForm(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Email",
                      validator: (email) {
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(email!) ||
                            email.isEmpty) {
                          return "Enter correct email address";
                        } else {
                          return null;
                        }
                      },
                    ),
                    UiHelper.verticalSpaceSmall,
                    AppTextForm(
                      obscureText: visibility,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visibility = !visibility;
                          });
                        },
                        icon: visibility
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                      controller: _passwordController,
                      validator: (password) {
                        if (password!.isEmpty ||
                            !_containLettersAndNumbers(password)) {
                          return _validatePassword(password);
                        } else {
                          null;
                        }
                      },
                      hintText: "Password",
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: AppTextStyle.bodyExtraSmall().copyWith(
                              fontSize: 13.0, color: AppColors.primary),
                        ),
                      ),
                    ),
                    UiHelper.verticalSpaceMedium,
                    ReUseAbleButton(
                        label: "Continue",
                        onPress: () {
                          if (_validation.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PaymentPage(),
                              ),
                            );
                          } else {
                            return showSnacksBar(context);
                          }
                        }),
                    UiHelper.verticalSpaceSmall,
                    Center(
                      child: Text(
                        "Or",
                        style: AppTextStyle.bodyMedium().copyWith(
                          fontSize: 15.0,
                          color: AppColors.extraLightGrey,
                        ),
                      ),
                    ),
                    UiHelper.verticalSpaceSmall,
                    Container(
                      height: MediaQuery.of(context).size.height * 0.059,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryLightGrey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              AppIcons.googleIcon,
                            ),
                          ),
                          UiHelper.horizontalSpaceSmall,
                          Text(
                            "Login with Google",
                            style: AppTextStyle.bodyMedium().copyWith(
                              color: AppColors.darkSerpent,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New here?  ",
                          style: AppTextStyle.bodyExtraSmall()
                              .copyWith(fontSize: 13.0),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: AppTextStyle.bodyExtraSmall().copyWith(
                                fontSize: 13.0, color: AppColors.primary),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
