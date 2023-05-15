import 'package:flutter/material.dart';
import 'package:pomodorro/utils.dart';
import 'package:provider/provider.dart';

import '../timerservice.dart';

class TimerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider =  Provider.of<TimerService>(context);
    return Column(
      children: [
        Text("Skup się!", style: textStyle(35, Colors.black, FontWeight.w700)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(0, 2))
                  ]),
              child: Center(
                child: Text((provider.currentDuration ~/ 60).toString(),
                    style: textStyle(70, Colors.black, FontWeight.bold)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              ":",
              style: textStyle(60, Colors.lightBlueAccent, FontWeight.bold),
            ),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0, 2))
                ],
              ),
              child: Center(
                child: Text("00",
                    style: textStyle(70, Colors.black, FontWeight.bold)),
              ),
            )
          ],
        )
      ],
    );
  }
}
