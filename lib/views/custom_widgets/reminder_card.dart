import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_app/constant/colors.dart';
import 'package:task_management_app/constant/style.dart';

class ReminderCard extends StatelessWidget {
  final VoidCallback onTap;
  final String logo;
  final String title;
  final String date;

  const ReminderCard(
      {super.key,
      required this.onTap,
      required this.logo,
      required this.title,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        color: MyColors.whiteColor,
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
                width: 35,
                child: SvgPicture.asset("assets/logo/$logo.svg"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: titleStyle,
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text("Save Date:", style: subTitleStyle),
                  Text(
                    date,
                    style: subTitleStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
