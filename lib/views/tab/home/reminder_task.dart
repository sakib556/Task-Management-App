import 'package:flutter/material.dart';

class ReminderTask extends StatelessWidget {
  const ReminderTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("sf"),
        Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.brown,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(), 
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(10),
            children: _widgetList,
          ),
        ),
      ],
    );
  }

}
List<Widget> _widgetList=[Container(
                width: 160.0,
                color: Colors.red,
              ),
              const SizedBox(width: 10,),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              const SizedBox(width: 10,),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),];