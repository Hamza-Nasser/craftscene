import 'package:flutter/widgets.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    BuildContext context, double fontSize, FontWeight weight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    // fontFamily: FontConstants.fontFamily,

    // fontFamily: locale == const Locale("en")
    //     ? AppFontFamilies.arial
    //     : AppFontFamilies.SFUIText,
    height: 1,
    letterSpacing: 1.05,
    fontWeight: weight,
    color: color,
  );
}

// regular style

TextStyle? getRegularTextStyle(BuildContext context,
    {double fontSize = FontSize.s14, required Color color}) {
  return null;

  // return _getTextStyle(
  //     context, fontSize.sp(context), FontWeightManager.regular, color);
}
// medium style

TextStyle getMediumTextStyle(BuildContext context,
    {double fontSize = FontSize.s15, required Color color}) {
  return _getTextStyle(context, fontSize, FontWeightManager.medium, color);
}
// light style

TextStyle getLightTextStyle(BuildContext context,
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(context, fontSize, FontWeightManager.light, color);
}
// semiBold style

TextStyle getSemiBoldTextStyle(BuildContext context,
    {double fontSize = FontSize.s20, required Color color}) {
  return _getTextStyle(context, fontSize, FontWeightManager.semiBold, color);
}
// Bold style

TextStyle getBoldTextStyle(BuildContext context,
    {double fontSize = FontSize.s24, required Color color}) {
  return _getTextStyle(context, fontSize, FontWeightManager.bold, color);
}
