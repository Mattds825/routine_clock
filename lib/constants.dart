import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const kColor1 = Color(0xff262626);
const kColor2 = Color(0xff434343);
const kColor3 = Color(0xff555555);
const kColor4 = Color(0xff7b7b7b);
const kColor5 = Color(0xff9d9d9d);
const kColor6 = Color(0xffc4c4c4);

const klColor1 = Color(0xffcfd8dc);
const klColor2 = Color(0xffb0bec5);
const klColor3 = Color(0xff90a4ae);
const klColor4 = Color(0xff78909c);
const klColor5 = Color(0xff607d8b);
const klColor6 = Color(0xff546e7a);

const kTitleText = TextStyle(
  color: Color(0xff9d9d9d),
  fontSize: 28.0,
  fontWeight: FontWeight.w700,
);

const kRoutineWidgetAlarmTitle = TextStyle(
  color: Color(0xff9d9d9d),
  fontSize: 16.0,
  fontWeight: FontWeight.w700,
);

const kRoutineWidgetAlarmTime = TextStyle(
  color: Color(0xff9d9d9d),
  fontSize: 20.0,
  fontWeight: FontWeight.w900,
);

const kRoutineWidgetAlarmDays = TextStyle(
  color: Color(0xff9d9d9d),
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);

const kRoutineTimeWidgetTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 36.0,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.4);

const kFinishButtonTextStyle = TextStyle(
    color: kColor4,
    fontSize: 30.0,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.4);

const kTuneHashtagStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);

const kDayItemStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);

const kCreateRoutineTitle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w700,
  color: Colors.white,
  letterSpacing: 1.2,
);

const kCreateRoutineItemsTitle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

InputDecoration kTextFieldTitle() => InputDecoration(
      hintText: 'Enter routine title',
      hintStyle: TextStyle(color: Colors.white, fontSize: 24.0),
    );

InputDecoration kTextFieldDescription() => InputDecoration(
      hintText: 'Enter routine title',
      hintStyle: TextStyle(color: Colors.white, fontSize: 18.0),
    );

TextFormField kTitleTextFormField(String label, double fontSize, TextEditingController controler) =>
    TextFormField(
      controller: controler,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white, fontSize: fontSize),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        hintText: label,
        hintStyle: TextStyle(color: kColor5, fontSize: fontSize),
      ),
    );
