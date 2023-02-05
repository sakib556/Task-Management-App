
import 'package:flutter/material.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("All Tasks"),
              Text("See All"),
            ],
          ),
          Container(
            color: Colors.yellow,
            height: 200,
            child: ListView(
              shrinkWrap: true,
              children: const [
                Text("All Tasks"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
                Text("See All"),
              ],
            ),
          )
          
        ],
    
      ),
    );
  }
}