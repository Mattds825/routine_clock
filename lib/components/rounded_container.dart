import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../constants.dart';

class RoundContainer extends StatelessWidget {
  final Widget child;
  RoundContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: kColor2,
      ),
      child: Neumorphic(
        //drawSurfaceAboveChild: false,
        style: NeumorphicStyle(
          shadowDarkColor: kColor1,
          shadowLightColor: kColor3,
          shadowDarkColorEmboss: kColor2,
          depth: 4,
          color: kColor2,
        ),
        child: child,
      ),
    );
  }
}