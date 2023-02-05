import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Perform action on button tap
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff24966D),
            borderRadius: const BorderRadius.all(Radius.circular(70)),
            border: Border.all(width: 2, color: const Color(0xff4DFFFFFF))),
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.play_arrow,color: Colors.white,),
                const SizedBox(width: 5),
                Text(text,style:  const TextStyle(color: Colors.white),textAlign:TextAlign.center,),
              ],
            ),
        ),
      ),
    );
  }
}
