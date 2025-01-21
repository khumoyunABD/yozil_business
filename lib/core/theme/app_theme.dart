import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

// Using Sage Green as an example
final FlexSchemeColor schemeColor = FlexSchemeColor.from(
  primary: const Color(0xFF8CAA98),
  secondary: const Color(0xFFD8A7B1),
);

// Using Sage Green as an example
final FlexSchemeColor schemeColorDark = FlexSchemeColor.from(
  primary: const Color(0xFF8CAA98),
  secondary: const Color(0xFFD8A7B1),
);

/// Application theme class
class AppTheme {
  AppTheme._();

  ///new colors

  // static ThemeData lightTheme = FlexThemeData.light(
  //   //colors: schemeColor,
  //   scheme: FlexScheme.tealM3,
  //   surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  //   blendLevel: 9,
  //   subThemesData: const FlexSubThemesData(
  //     blendOnLevel: 10,
  //     blendTextTheme: true,
  //     useTextTheme: true,
  //   ),
  // );

  static ThemeData darkTheme = FlexThemeData.dark(
    //colors: schemeColorDark,
    scheme: FlexScheme.blueWhale,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      blendTextTheme: true,
      useTextTheme: true,
      defaultRadius: 8.0,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
  );
}
