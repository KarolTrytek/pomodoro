import 'package:flutter/material.dart';
import 'package:pomodorro/utils.dart';
import 'package:provider/provider.dart';

import '../timerservice.dart';

class TimeOptions extends StatelessWidget {
  double selectedTime = 1500;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: selectableTimes.map((time) {
            return InkWell(
                onTap:()
            =>
                provider.selectTime(double.parse(time))
            ,
            child: Container(
            margin: EdgeInsets.only(left: 10),
            width: 70,
            height: 50,
            decoration: int.parse(time) == provider.selectedTime
            ? BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(5))
                : BoxDecoration(
            border: Border.all(width: 3, color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
            child: Center(
            child: Text(
            (int.parse(time) ~/ 60).toString(),
            style: textStyle(25, Colors.black, FontWeight.w700),
            )
            ,
            )
            ,
            )
            );
          }).toList()),
    );
  }
}
