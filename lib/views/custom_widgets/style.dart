import 'package:flutter/material.dart';
import 'package:task_management_app/constant/colors.dart';

final titleStyle = _titleStyle();
final subTitleStyle = _subTitleStyle();
TextStyle _subTitleStyle() {
  return const TextStyle(
      fontSize: 10, fontWeight: FontWeight.w400, color: MyColors.subtitleColor);
}

TextStyle _titleStyle() {
  return const TextStyle(
       fontWeight: FontWeight.w500, fontSize: 12, color: MyColors.primaryColor);
}
