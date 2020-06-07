import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:routine_clock/constants.dart';

class RoutineWidget extends StatefulWidget {
  @override
  _RoutineWidget createState() => _RoutineWidget();
}

class _RoutineWidget extends State<RoutineWidget> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      padding: EdgeInsets.all(8.0),
      style: NeumorphicStyle(
        shadowDarkColor: kColor1,
        shadowLightColor: kColor3,
        shadowDarkColorEmboss: kColor2,
        depth: 3,
        color: kColor2,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Routine 1',
                      style: kRoutineWidgetAlarmTitle,
                    ),
                    Text(
                      '6:30 AM',
                      style: kRoutineWidgetAlarmTime,
                    ),
                    Text(
                      'Mon Tue Wed Thu Fri',
                      style: kRoutineWidgetAlarmDays,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: Switch(
                      value: switchValue,
                      activeColor: kColor6,
                      onChanged: (bool change) {
                        setState(() {
                          switchValue = change;
                        });
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
