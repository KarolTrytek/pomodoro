import 'package:flutter/material.dart';
import 'package:pomodorro/utils.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("0/4", style: textStyle(30, Colors.black, FontWeight.bold)),
            Text("0/12", style: textStyle(30, Colors.black, FontWeight.bold),)
          ],
        ),
        SizedBox( height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Runda", style: textStyle(25, Colors.black, FontWeight.bold)),
            Text("Cel", style: textStyle(25, Colors.black, FontWeight.bold),)
          ],
        )
      ],
    );
  }
}