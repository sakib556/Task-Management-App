import 'package:flutter/material.dart';
import 'package:task_management_app/constant/colors.dart';
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
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          unselectedLabelStyle:TextStyle(
            color: MyColors.ashColor
          ), 
        )
      ),
      home: const BottomNavBarScreen(),
    );
  }
}

// MaterialColor primarySwatch = const MaterialColor(
//   0xff042E2B,
//   <int, Color>{
//     50: Color(0xff085C57),
//     100: Color(0xff0C8A83),
//     200: Color(0xff10B7AF),
//     300: Color(0xff14E5DB),
//     400: Color(0xff1913A7),
//     500: Color(0xff1D417E),
//     600: Color(0xff216F54),
//     700: Color(0xff259C2A),
//     800: Color(0xff2AC900),
//     900: Color(0xff2F05D7),
//   },
// );


