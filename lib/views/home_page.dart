import 'package:flutter/material.dart';
import 'package:task_management_app/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.7,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.7 - 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 8, 77, 9),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: const [
                              Title(),
                            ],
                          )),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 3),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.40),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.person,
                                size: 60,
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text("Down Body"),
        ],
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
          children: [
            Text(
              "Hi Habib",
              style: TextStyle(color: onBackgroundColor(context)),
            ),
            Text("Let’s explore your notes",
                style: TextStyle(
                    color: onBackgroundColor(context).withOpacity(0.40))),
          ],
        ),
        Container(

          decoration: BoxDecoration(
            border: Border.all(
                color: primaryColor, width: 3),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            clipBehavior: Clip.hardEdge,
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
