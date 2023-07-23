import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vnicom_test/themes/app_colors.dart';

class AppTextStyle {

  static  TextStyle bodyLarge(){
   return GoogleFonts.nunito(
      fontSize: 36.0,
      fontWeight: FontWeight.w700,
     color: AppColors.blueBlack,

    );
  }

  static  TextStyle bodyExtraSmall(){
    return GoogleFonts.nunitoSans(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: AppColors.lightGrey

    );
  }

  static  TextStyle bodyMediumPlus(){
    return GoogleFonts.nunitoSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: AppColors.white,

    );
  }

  static  TextStyle bodySmall(){
    return GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: AppColors.blueBlack,

    );
  }

  static  TextStyle bodyMedium(){
    return GoogleFonts.nunitoSans(
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
      color: AppColors.charcoalGrey,

    );
  }
}
