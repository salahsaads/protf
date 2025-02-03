import 'package:flutter/material.dart';
import 'package:portfolio/features/Home/presentation/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class ResponsiveFontsize {
  static double responsiveFontSize(BuildContext context, double fontSize) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double limitFontSize = fontSize * 0.5;
    double upLimitFontSize = fontSize * 1.4;
    return responsiveFontSize.clamp(limitFontSize, upLimitFontSize);
  }

  static double getScaleFactor(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    if (w < 600) {
      return w / 450;
    } else if (w < 900) {
      return w / 630;
    } else {
      return w / 1000;
    }
  }
}