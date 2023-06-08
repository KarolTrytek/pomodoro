import 'package:flutter/material.dart';
import 'package:pomodorro/timerservice.dart';
import 'package:pomodorro/utils.dart';
import 'package:pomodorro/widget/progresswidget.dart';
import 'package:pomodorro/widget/timecontroller.dart';
import 'package:pomodorro/widget/timeoptions.dart';
import 'package:pomodorro/widget/timercard.dart';
import 'package:provider/provider.dart';

class PomodoroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Pomodoro",
            style: textStyle(25, Colors.black, FontWeight.w700),
          ),
          actions: [
            IconButton(
              onPressed: () =>
                  Provider.of<TimerService>(context, listen: false).reset(),
              icon: Icon(
                Icons.refresh,
                color: Colors.black,
              ),
              iconSize: 40,
            )
          ]),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimeOptions(),
              SizedBox(
                height: 40,
              ),
              TimeController(),
              SizedBox(
                height: 40,
              ),
              ProgressWidget()
            ],
          ),
        ),
      ),
    );
  }
}
