import 'package:flutter/material.dart';

class Global {
  static const Color orange = Color(0xFFF57F17);
  static const Color darkOrange = Color(0xFFD36200);
  static const Color green = Color(0xFF388E3C);
  static const Color grey = Colors.grey;
  static const Color darkGreen = Color(0xFF175E1B);
  static const Color electricGreen = Color(0xFF1F7E24);
  static const Color red = Color(0xFFB71C1C);
  static const Color darkRed = Color(0xFF781C1C);
  static const Color gray = Color(0xFF404040);
  static const Color grayLight = Color(0xFF848484);
  static const Color grayExtraLight = Color(0xFFD0D0D0);
  static const Color linkColor = Color(0xFF038FD4);
  static const Color backgroundLightTheme = Colors.white;
  static const Color backgroundDarkTheme = Color(0xFF0A0A0A);
  static const Color primaryLightTheme = Colors.white70;
  static const Color primaryDarkTheme = Color(0xFF171616);
  static const Color grayInv = Color(0x86404040);
  static const Color grayLightInv = Color(0x89848484);
  static const Map<int, Color> lightMap = {
    50:  Colors.white70,
    100: Colors.white70,
    200: Colors.white70,
    300: Colors.white70,
    400: Colors.white70,
    500: Colors.white70,
    600: Colors.white70,
    700: Colors.white70,
    800: Colors.white70,
    900: Colors.white70,
  };
  static const Map<int, Color> darkMap = {
    50:  Color(0xFF171616),
    100: Color(0xFF171616),
    200: Color(0xFF171616),
    300: Color(0xFF171616),
    400: Color(0xFF171616),
    500: Color(0xFF171616),
    600: Color(0xFF171616),
    700: Color(0xFF171616),
    800: Color(0xFF171616),
    900: Color(0xFF171616)
  };
  static const TextTheme lightTextTheme = TextTheme(
      displayLarge: TextStyle(color: Colors.black),
      displayMedium: TextStyle(color: Colors.black),
      displaySmall: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),
      titleLarge: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black),
      titleSmall: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: Colors.black),
      labelLarge: TextStyle(color: Colors.black)
  );
  static const TextTheme darkTextTheme = TextTheme(
      displayLarge: TextStyle(color: Colors.white),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white)
  );
  static const double logoWith = 130;
  static const TextStyle nanoText = TextStyle(
    color: grey,
    fontSize: 10,
  );
  static const TextStyle searchText = TextStyle(
    color: grey,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle facilitiesText = TextStyle(
    color: grey,
    fontSize: 12,
  );
  static const TextStyle littleAppBarText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle extraText = TextStyle(
    fontSize: 12,
  );
  static const TextStyle switchText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle switchNewText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle switchUrlText = TextStyle(
    fontSize: 14,
    color: Colors.blue,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle justText = TextStyle(
    fontSize: 16,
  );
  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    color: backgroundLightTheme,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle errorText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle electricText = TextStyle(
    fontSize: 16.0,
    color: darkGreen,
  );
  static const TextStyle nameCarText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle headerText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle changeCarText = TextStyle(
    fontSize: 20.0,
    color: darkRed,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle notBoldHeaderText = TextStyle(
    fontSize: 20.0,
  );
  static const TextStyle appBarText = TextStyle(
    fontSize: 20.0,
  );
  static const TextStyle bigHeaderText = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle priceStyleText = TextStyle(
    color: orange,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle numberStyleText = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
  );

  static Color getIconColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?
    grayLight : gray;
  }

  static Color getNewIconColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?/////////////
    backgroundLightTheme : backgroundDarkTheme;
  }

  static Color getItemIconColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?
    gray : grayExtraLight;
  }

  static Color getBottomNavBackgroundColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?
    primaryDarkTheme : primaryLightTheme;
  }

  static Color getButtonPDFBackgroundColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?
    primaryLightTheme: primaryDarkTheme;
  }

  static Color getBorderColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?
    grayLightInv : grayInv;
  }

  static TextStyle getHintStyle(BuildContext context) => TextStyle(
    color: MediaQuery.of(context).platformBrightness == Brightness.dark ?
    grayLightInv : grayInv,
  );

  static TextStyle getTextItemStyle(BuildContext context) => TextStyle(
    color: MediaQuery.of(context).platformBrightness == Brightness.dark ?
    grayExtraLight : grayLight,
    fontSize: 14,
  );

  static TextStyle getTextPDFStyle(BuildContext context) => TextStyle(
    color: MediaQuery.of(context).platformBrightness == Brightness.dark ?
    backgroundDarkTheme : backgroundLightTheme,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static TextStyle getTextWalletStyle(BuildContext context) => TextStyle(
    color: MediaQuery.of(context).platformBrightness == Brightness.dark ?
    backgroundDarkTheme : backgroundLightTheme,
    fontWeight: FontWeight.bold,
    fontSize: 10,
  );
}