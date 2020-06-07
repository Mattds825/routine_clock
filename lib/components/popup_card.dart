import 'package:flutter/material.dart';
import 'package:routine_clock/components/rounded_container.dart';
import 'package:routine_clock/constants.dart';

class PopUpCard extends StatefulWidget {
  Widget cardWidget;

  PopUpCard({this.cardWidget});

  @override
  _PopUpCardState createState() => _PopUpCardState();
}

class _PopUpCardState extends State<PopUpCard>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor2,
      body: Center(
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 140.0),
            child: RoundContainer(
              child: widget.cardWidget,
            ),
          ),
        ),
      ),
    );
  }
}
