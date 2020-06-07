import 'package:flutter/material.dart';
import 'package:routine_clock/constants.dart';

class TunePickerWidget extends StatefulWidget {
  int tuneNum = 1;

  @override
  _TunePickerWidgetState createState() => _TunePickerWidgetState();
}

class _TunePickerWidgetState extends State<TunePickerWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            splashColor: Colors.transparent,
            icon: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                if (widget.tuneNum <= 4) {
                  widget.tuneNum++;
                }
              });
            },
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.tuneNum.toString(),
                  style: kTuneHashtagStyle,
                ),
                Icon(
                  Icons.music_note,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          IconButton(
            splashColor: Colors.transparent,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                if (widget.tuneNum > 0) {
                  widget.tuneNum--;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
