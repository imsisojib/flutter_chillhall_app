import 'package:flutter/cupertino.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';
class TextDecorations{
  static TextStyle getNormalTextStyle(BuildContext context,{var color, double fontSize=14,double letterSpacing=0}){
    return TextStyle(
      fontFamily: 'Manrope',

      fontSize: fontSize,
      fontWeight: FontWeight.w200,
      color: color ?? AppColors.white50,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle getBoldTextStyle(BuildContext context,{var color, double fontSize=14}){
    return TextStyle(
        fontFamily: 'Manrope',
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color ?? AppColors.white50,
    );
  }

  static TextStyle geSemiBoldTextStyle(BuildContext context,{var color, double fontSize=14}){
    return TextStyle(
      fontFamily: 'Manrope',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.white50,
    );
  }

}