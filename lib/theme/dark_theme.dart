import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';

/*ThemeData dark = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: const Color(0xFF0B5721),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF2C2C2C),
  accentColor: const Color(0xFF252525),
  hintColor: const Color(0xFFE7F6F8),
  focusColor: const Color(0xFFADC4C8),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
    primary: Colors.white, textStyle: TextStyle(color: Colors.white),
  )),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),

  textTheme: const TextTheme(
    button: TextStyle(color: Color(0xFF252525)),

    headline1: TextStyle(fontWeight: FontWeight.w300, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline2: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline3: TextStyle(fontWeight: FontWeight.w500, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline4: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline5: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline6: TextStyle(fontWeight: FontWeight.w800, fontSize: Dimensions.FONT_SIZE_LARGE),
    caption: TextStyle(fontWeight: FontWeight.w900, fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),

    subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
    bodyText2: TextStyle(fontSize: 12.0),
    bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);*/


class DarkTheme{
  static ThemeData buildAppDarkTheme() {
    final base = ThemeData.dark();
    return base.copyWith(
      bottomAppBarColor: AppColors.darkBottomAppBarBackground,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.darkDrawerBackground,
        modalBackgroundColor: Colors.black.withOpacity(0.7),
      ),
      cardColor: AppColors.darkCardBackground,
      chipTheme: _buildChipTheme(
        AppColors.blue200,
        AppColors.darkChipBackground,
        Brightness.dark,
      ),
      colorScheme: const ColorScheme.dark(
        primary: AppColors.blue200,
        //primaryVariant: AppColors.blue300,
        secondary: AppColors.orange300,
        //secondaryVariant: AppColors.orange300,
        surface: AppColors.black800,
        error: AppColors.red200,
        onPrimary: AppColors.black900,
        onSecondary: AppColors.black900,
        onBackground: AppColors.white50,
        onSurface: AppColors.white50,
        onError: AppColors.black900,
        background: AppColors.black900,
      ),
      textTheme: _buildReplyDarkTextTheme(base.textTheme),
      scaffoldBackgroundColor: AppColors.black900,
    );
  }

  static ChipThemeData _buildChipTheme(
      Color primaryColor,
      Color chipBackground,
      Brightness brightness,
      ) {
    return ChipThemeData(
      backgroundColor: primaryColor.withOpacity(0.12),
      disabledColor: primaryColor.withOpacity(0.87),
      selectedColor: primaryColor.withOpacity(0.05),
      secondarySelectedColor: chipBackground,
      padding: const EdgeInsets.all(4),
      shape: const StadiumBorder(),
      labelStyle: TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: -0.05,
        color: brightness == Brightness.dark
            ? AppColors.white50
            : AppColors.black900,
      ),
      secondaryLabelStyle: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: -0.05,
        color: AppColors.white50,
      ),
      brightness: brightness,
    );
  }

  static TextTheme _buildReplyDarkTextTheme(TextTheme base) {
    return base.copyWith(
      headline4: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 34,
        letterSpacing: 0.4,
        height: 0.9,
        color: AppColors.white50,
      ),
      headline5: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.bold,
        fontSize: 24,
        letterSpacing: 0.27,
        color: AppColors.white50,
      ),
      headline6: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.18,
        color: AppColors.white50,
      ),
      subtitle2: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 14,
        letterSpacing: -0.04,
        color: AppColors.white50,
      ),
      bodyText1: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.normal,
        fontSize: 16,
        letterSpacing: 0.2,
        color: AppColors.white50,
      ),
      bodyText2: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: -0.05,
        color: AppColors.white50,
      ),
      caption: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.normal,
        fontSize: 12,
        letterSpacing: 0.2,
        color: AppColors.white50,
      ),
    );
  }
}

