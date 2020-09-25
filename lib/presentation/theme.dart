import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static final purple = Colors.deepPurple;
  static final purpleLight = Colors.purple;
  static final white = Color(0XFFFFFFFF);
  static final white38 = Colors.white38;
}

final lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: AppColors.white,
  ),
  textTheme: TextTheme(bodyText1: TextStyle(color: AppColors.white38)),
  canvasColor: AppColors.white,
  accentColor: AppColors.purple,
  iconTheme: IconThemeData(
    color: AppColors.purple,
  ),
);

final gradients = [
  AppColors.purple,
  AppColors.purpleLight,
];

class RandomHexColor {
  static List<Color> one = [
    AppColors.purple,
    AppColors.purpleLight,
  ];
  static List<Color> two = [
    Colors.orange,
    Colors.orangeAccent,
  ];
  static List<Color> three = [
    Colors.red,
    Colors.redAccent,
  ];
  static List<Color> four = [
    Colors.blue[700],
    Colors.blueAccent,
  ];

  List<List<Color>> hexColor = [one, two, three, four];

  static final _random = Random();

  List<Color> colorRandom() {
    return hexColor[_random.nextInt(4)];
  }
}
