
import 'package:flutter/material.dart';

class GrandientContainer extends StatelessWidget {
  const GrandientContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff042e2b),
        Color(0xff2c8877),
      ],
    ),
  ),
  child: child,
);
  }
}