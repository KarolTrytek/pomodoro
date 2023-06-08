import 'package:flutter/material.dart';
import 'package:pomodorro/utils.dart';
import 'package:provider/provider.dart';

import '../timerservice.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${provider.rounds}/4", style: textStyle(30, Colors.black, FontWeight.bold)),
            Text(
              "${provider.goal}/12",
              style: textStyle(30, Colors.black, FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Runda", style: textStyle(25, Colors.black, FontWeight.bold)),
            Text(
              "Cel",
              style: textStyle(25, Colors.black, FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
