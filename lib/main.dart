import 'package:flutter/material.dart';
import 'package:prueba_tecnica_juan/presentation/home/home_screen.dart';
import 'presentation/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: HomeScreen.init(),
    );
  }
}
