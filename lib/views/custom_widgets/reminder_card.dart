import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.yellow,
                height: 32,
                width: 36,
                child: Center(
                  child: SvgPicture.asset(
                    "assets/logo/$logo.svg",
                    fit: BoxFit.none,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  // fontSize: 18,
                ),
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  const Text("Save Date:"),
                  Text(date),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
