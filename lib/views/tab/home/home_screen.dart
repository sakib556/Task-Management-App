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
        _allTasks()
      ],
    );
  }

  Widget _heading(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.7 - 40,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: primaryColor,
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
                    Title(),
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

  Widget _allTasks() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: AllTasks(),
    );
  }
}

const whiteColor = Colors.white;
const greyColor = Color(0xffB2FFFFFF);
const deepGreyColor = Color(0xff1AFFFFFF);

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
              style: TextStyle(fontSize: 18, color: whiteColor),
            ),
            SizedBox(
              height: 7,
            ),
            Text("Let’s explore your notes",
                style: TextStyle(fontSize: 12, color: greyColor)),
          ],
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            //   color: const Color(0xff24966D),
            border: Border.all(color: const Color(0xff24966D), width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            clipBehavior: Clip.hardEdge,
            child: const Icon(
              Icons.person,
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
      height: 180,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xff1AFFFFFF)),
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff1AFFFFFF)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("Welcome to TickTick Task",
                    style: TextStyle(fontSize: 18, color: whiteColor)),
                Text(
                    "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                    style: TextStyle(fontSize: 12, color: greyColor)),
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
