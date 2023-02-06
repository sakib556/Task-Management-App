import 'package:flutter/material.dart';
import 'package:task_management_app/constant/colors.dart';
import 'package:task_management_app/views/custom_widgets/reminder_card.dart';

class ReminderTask extends StatelessWidget {
  const ReminderTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Reminder Task",
                style: TextStyle(
                    color: MyColors.whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "See All",
                style: TextStyle(color: MyColors.greyColor, fontSize: 12),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 110,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15, right: 5),
            children: _remiderTaskList,
          ),
        ),
      ],
    );
  }
}

List<Widget> _remiderTaskList = [
  ReminderCard(
      onTap: () {},
      logo: "reminder_yellow",
      title: "Online Class Routine",
      date: "10/12/2022"),
  const SizedBox(
    width: 10,
  ),
  ReminderCard(
      onTap: () {},
      logo: "reminder_green",
      title: "Office Work List",
      date: "15/12/2022"),
  const SizedBox(
    width: 10,
  ),
  ReminderCard(
      onTap: () {},
      logo: "reminder_blue",
      title: "Day Task",
      date: "10/12/2022"),
];
