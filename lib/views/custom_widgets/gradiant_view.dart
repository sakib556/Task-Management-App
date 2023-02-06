import 'dart:ui';

import 'package:flutter/material.dart';

// class GradiantView extends StatelessWidget {
//   const GradiantView({super.key, required this.child});
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return LinearGradient(colors: colors)
//   }
// }
class GradiantView extends StatelessWidget {
  const GradiantView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        // radius: 0.5,
        colors: [
          Color(0xff042E2B),
          Color(0xff2C8877),
          ],
        tileMode: TileMode.clamp,
      ).createShader(bounds),
      child: child,
    );
  }
}