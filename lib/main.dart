import 'package:flutter/material.dart';
import 'package:vnicom_test/themes/app_colors.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MiniApp());
}

class MiniApp extends StatelessWidget {
  const MiniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.powderBlue,
              ),
            )
        ),
      ),
      home: const LoginPage(),
    );
  }
}
