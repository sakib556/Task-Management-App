import 'package:flutter/material.dart';
import 'package:task_management_app/constant/colors.dart';

class AshColorView extends StatelessWidget {
  const AshColorView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [greyColor,greyColor],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}