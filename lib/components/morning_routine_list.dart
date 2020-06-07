import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../constants.dart';

class MorningRoutineList extends StatefulWidget {
  @override
  _MorningRoutineListState createState() => _MorningRoutineListState();
}

class _MorningRoutineListState extends State<MorningRoutineList> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Container(      
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction){
              setState(() {
                items.removeAt(index);
              });
            },
            child: Container(
              child: Center(
                child: NeumorphicText(
                  items[index],
                  textStyle: NeumorphicTextStyle(
                    fontSize: 50,
                  ),
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
          );
        },
      ),
    );
  }
}
