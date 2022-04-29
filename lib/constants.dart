import 'package:flutter/material.dart';

const Color white24 = Color.fromRGBO(249, 249, 249, 1);
const Color white25 = Color.fromRGBO(255, 255, 255, 1);
const Color grey16 = Color.fromRGBO(0, 0, 0, 0.16);
const Color mySwatch = Color.fromRGBO(42, 193, 159, 1);
const Color grey22 = Color.fromRGBO(223, 227, 239, 1);
const Color red = Color.fromRGBO(248, 131, 135, 1);
const Color blue = Color.fromRGBO(72, 192, 255, 1);
const Color grey14 = Color.fromRGBO(144, 159, 175, 1);
const Color white23 = Color.fromRGBO(237, 240, 247, 1);
const Color white26 = Color.fromRGBO(206, 206, 206, 0.16);

const SizedBox fixedSpace = SizedBox(height: 16);

MaterialColor getItsMaterialColor(Color color) {
  List opacities = <double>[.05];

  Map<int, Color> mySwatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    opacities.add(0.1 * i);
  }
  for (var strength in opacities) {
    final double ds = 0.5 - strength;
    mySwatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, mySwatch);
}
