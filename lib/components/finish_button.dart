import 'package:flutter/material.dart';
import 'package:routine_clock/constants.dart';
import 'package:routine_clock/screens/home_screen.dart';

class FinishButton extends StatefulWidget {
  FinishButton({Key key}) : super(key: key);

  @override
  _FinishButtonState createState() => _FinishButtonState();

  double sliderValue = 0;
}

class _FinishButtonState extends State<FinishButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: (SliderTheme(
          data: SliderTheme.of(context).copyWith(
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            thumbColor: kColor1,
            overlayColor: Colors.transparent,
            activeTrackColor: kColor4,
            inactiveTrackColor: kColor2,
          ),
          child: Slider(
            value: widget.sliderValue,
            min: 0,
            max: 10,
            onChanged: (double newVal) {
              if(widget.sliderValue >= 9.5){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return HomeScreen();
                }));
              }
              setState(() {
                widget.sliderValue = newVal;
              });
            },
          ),
        )),
      ),
    );
  }
}
