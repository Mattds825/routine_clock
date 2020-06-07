import 'package:flutter/material.dart';
import 'package:routine_clock/constants.dart';

class TimePickerWidget extends StatefulWidget {
  TimePickerWidget({Key key}) : super(key: key);

  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimeChangeText(6, TimeType.hour),
            Text(
              ':',
              style: kRoutineTimeWidgetTextStyle,
            ),
            TimeChangeText(30, TimeType.minute),
          ],
        ),
      ),
    );
  }
}

class TimeChangeText extends StatefulWidget {
  int initialTime;
  final TimeType type;

  TimeChangeText(this.initialTime, this.type);

  @override
  TimeChangeTextState createState() => TimeChangeTextState();
}

class TimeChangeTextState extends State<TimeChangeText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                widget.initialTime++;
              });
            },
          ),
          Text(
            widget.initialTime.toString(),
            style: kRoutineTimeWidgetTextStyle,
          ),
          IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                widget.initialTime--;
              });
            },
          ),
        ],
      ),
    );
  }
}

enum TimeType{
  hour,
  minute,
}
