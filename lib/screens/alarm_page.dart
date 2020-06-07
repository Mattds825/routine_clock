import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:routine_clock/components/morning_routine_list.dart';

import '../constants.dart';

class AlarmPage extends StatefulWidget {
  AlarmPage({Key key}) : super(key: key);

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: klColor2,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Expanded(
                flex: 2,
                child: Neumorphic(
                  margin: EdgeInsets.all(60),
                  style: NeumorphicStyle(
                    shadowDarkColor: Colors.black54,
                    shadowLightColor: Colors.white54,
                    shadowDarkColorEmboss: Colors.black38,
                    depth: 2,
                    color: klColor2,
                  ),
                  child: Container(
                    child: Center(
                      child: NeumorphicText(
                        '6:30am',
                        textStyle: NeumorphicTextStyle(fontSize: 80.0),
                        style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.circle(),
                          shadowDarkColor: Colors.black54,
                          shadowLightColor: Colors.white54,
                          shadowDarkColorEmboss: Colors.black38,
                          depth: 2,
                          color: klColor2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Center(
                    child: MorningRoutineList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
