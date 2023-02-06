import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_app/constant/colors.dart';
import 'package:task_management_app/views/custom_widgets/gradient_container.dart';
import 'package:task_management_app/views/custom_widgets/play_button.dart';
import 'package:task_management_app/views/tab/home/all_tasks.dart';
import 'package:task_management_app/views/tab/home/reminder_task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 430,
          child: Stack(
            children: [
              _heading(context),
              const Positioned(
                  bottom: 0, right: 0, left: 0, child: ReminderTask()),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const AllTasks()
      ],
    );
  }

  Widget _heading(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.7 - 40,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: GrandientContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: const [
                    SizedBox(child: Title()),
                    SizedBox(
                      height: 30,
                    ),
                    WelcomeMessage()
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hi, Habib 👋",
              style: TextStyle(
                  fontSize: 18,
                  color: MyColors.whiteColor,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 7,
            ),
            Text("Let’s explore your notes",
                style: TextStyle(fontSize: 12, color: MyColors.greyColor,fontWeight: FontWeight.w400)),
          ],
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: MyColors.whiteColor,
            border: Border.all(color: MyColors.greenColor, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            clipBehavior: Clip.hardEdge,
            child: const Icon(
              Icons.person,
              color: MyColors.greenColor,
            ),
          ),
        ),
      ],
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: MyColors.deepGreyColor),
          borderRadius: BorderRadius.circular(15),
          color: MyColors.deepGreyColor),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Welcome to TickTick Task",
                    style: TextStyle(fontSize: 14, color: MyColors.whiteColor,fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 12,
                ),
                Text(
                    "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                    style: TextStyle(fontSize: 12, color: MyColors.greyColor,fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 14,
                ),
                PlayButton(text: "Watch Video")
              ],
            ),
          ),
          Positioned(
              bottom: -15,
              right: -15,
              child: SvgPicture.asset("assets/logo/todo_logo.svg"))
        ],
      ),
    );
  }
}
