import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can't instantiate this class

  static const primary = Color(0xffDE6535);
  static const secondary = Color(0xFF133e4d);
  static const tertiary = Color(0xFFE6F7FD);
  // Fonts
  static const Color primaryFont = Color(0xFF000000);
  static const Color secondaryFont = Color(0xFF4B5155);
  static const Color tertiaryFont = Color(0xFFFDFDFD);
  static const Color quaternaryFont = Color(0xFF000000);
  static const Color quinaryFont = Color(0xFF000000);

  // static MaterialColor color = createMaterialColor(Color(0xffA72217));

  static MaterialColor color = createMaterialColor(primary);

  static const Color primaryColor = _lightGrey;
  static const Color primaryColorDark = _grey;
  static MaterialColor accentColor = color;

  static const Color androidActionSheetColor = Colors.white;

  static const Color iosActionSheetColor = Color(0xccffffff);
  static const Color borderColor = Color(0xFFDFDFDF);

  static const Color _grey = Color(0xFFA5A5A5);
  static const Color _lightGrey = Color(0xFFBCBCBC);
  static Color accentDark = const Color(0xff1B2741);
  static Color accent = primary;

  static Color bgColors = const Color(0xfff6f6f6);
  static const Color colorGrey = Color(0xEEEEEEFF);
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
