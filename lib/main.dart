import 'package:flutter/material.dart';
import 'package:task_management_app/views/bottom_nav_bar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primarySwatch,
      ),
      home: const BottomNavBarScreen(),
    );
  }
}

MaterialColor primarySwatch = const MaterialColor(
  0xff042E2B,
  <int, Color>{
    50: Color(0xff085C57),
    100: Color(0xff0C8A83),
    200: Color(0xff10B7AF),
    300: Color(0xff14E5DB),
    400: Color(0xff1913A7),
    500: Color(0xff1D417E),
    600: Color(0xff216F54),
    700: Color(0xff259C2A),
    800: Color(0xff2AC900),
    900: Color(0xff2F05D7),
  },
);

MaterialColor kToDark = const MaterialColor(
  0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
  const <int, Color>{
    50: const Color(0xffce5641), //10%
    100: const Color(0xffb74c3a), //20%
    200: const Color(0xffa04332), //30%
    300: const Color(0xff89392b), //40%
    400: const Color(0xff733024), //50%
    500: const Color(0xff5c261d), //60%
    600: const Color(0xff451c16), //70%
    700: const Color(0xff2e130e), //80%
    800: const Color(0xff170907), //90%
    900: const Color(0xff000000), //100%
  },
);
