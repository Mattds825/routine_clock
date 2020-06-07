import 'package:flutter/material.dart';
import 'package:routine_clock/constants.dart';

bool isPopup = false;

class DaysChooserWdiget extends StatefulWidget {

  bool popup = false;

  void setPopUp(){
    isPopup = true;
  }

  @override
  _DaysChooserWdigetState createState() => _DaysChooserWdigetState();
}

class _DaysChooserWdigetState extends State<DaysChooserWdiget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DayTextTime('M'),
          DayTextTime('T'),
          DayTextTime('W'),
          DayTextTime('T'),
          DayTextTime('F'),
          DayTextTime('S'),
          DayTextTime('S'),
        ],
      ),
    );
  }
}

class DayTextTime extends StatefulWidget {
  String day;

  DayTextTime(this.day);

  bool activated = false;

  @override
  _DayTextTimeState createState() => _DayTextTimeState();
}

class _DayTextTimeState extends State<DayTextTime> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Text(
          widget.day,
          style: kDayItemStyle.copyWith(
            color: (widget.activated) ? Colors.white : kColor3,
            fontSize: (isPopup) ? 28.0 :   16,
          ),
        ),
      ),
      onTap: (){
        setState(() {
          widget.activated = (widget.activated) ? false : true;
        });
      },
    );
  }

  @override
  void dispose() {
    if(isPopup){isPopup=false;}
    // TODO: implement dispose
    super.dispose();
  }
}
