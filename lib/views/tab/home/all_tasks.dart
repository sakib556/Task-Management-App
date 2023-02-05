import 'package:flutter/material.dart';
import 'package:task_management_app/views/custom_widgets/reminder_card.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15),
            child: SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("All Tasks"),
                  Text("See All"),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
                padding: const EdgeInsets.only(right: 15, left: 15),
                physics: const AlwaysScrollableScrollPhysics(),
                children: _allTaskList),
          )
        ],
      ),
    );
  }
}

List<Widget> _allTaskList = [
  AllTaskCard(
      onTap: () {},
      logo: "reminder_yellow",
      title: "Online Class Routine",
      date: "10/12/2022"),
  const SizedBox(
    height: 10,
  ),
  AllTaskCard(
      onTap: () {},
      logo: "reminder_yellow",
      title: "Online Class Routine",
      date: "10/12/2022"),
  const SizedBox(
    height: 10,
  ),
  AllTaskCard(
      onTap: () {},
      logo: "reminder_yellow",
      title: "Online Class Routine",
      date: "10/12/2022"),
  const SizedBox(
    height: 10,
  ),
  AllTaskCard(
      onTap: () {},
      logo: "reminder_yellow",
      title: "Online Class Routine",
      date: "10/12/2022"),
  const SizedBox(
    height: 10,
  ),
  AllTaskCard(
      onTap: () {},
      logo: "reminder_yellow",
      title: "Online Class Routine",
      date: "10/12/2022"),
  const SizedBox(
    height: 80,
  ),
];
