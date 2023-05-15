import 'package:flutter/material.dart';
import 'package:pomodorro/utils.dart';
import 'package:pomodorro/widget/timeoptions.dart';
import 'package:pomodorro/widget/timercard.dart';

class PomodoroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.redAccent,
          title: Text(
            "Pomodoro",
            style: textStyle(25, Colors.white, FontWeight.w700),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              iconSize: 40,
            )
          ]),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 15,),
                TimerCard(),
                SizedBox(height:40,),
                TimeOptions()
              ],
            ),
        ),
      ),
    );
  }
}
