import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_app/constant/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(70)),
          border: Border.all(
              width: 1, color: MyColors.borderGreyColor.withOpacity(0.5)),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: MyColors.greenColor,
            borderRadius: const BorderRadius.all(Radius.circular(70)),
            border: Border.all(width: 2, color: MyColors.borderGreyColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icon/play_icon.svg"),
                const SizedBox(width: 5),
                Text(
                  text,
                  style:
                      const TextStyle(color: MyColors.whiteColor, fontSize: 12,fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
