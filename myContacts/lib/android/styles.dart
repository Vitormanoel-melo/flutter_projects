import 'package:flutter/material.dart';

// cor de fundo do app
const brightness = Brightness.light;
// cor primária
const primaryColor = const Color(0xFF2AACFF);
// cor acentuada
const accentColor = const Color(0xFFFFFFFF);

// define os temas
ThemeData androidTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText2: new TextStyle(
        fontFamily: 'Poppins'
      )
    ),
    primaryColor: primaryColor,
    accentColor: accentColor
  );
}
