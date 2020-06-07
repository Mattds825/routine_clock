import 'package:flutter/material.dart';
import 'package:routine_clock/constants.dart';

class TitleDescriptionWidget extends StatefulWidget {
  TextEditingController titleInputContoller = TextEditingController();
  TextEditingController decriptionInputContoller = TextEditingController();
  @override
  _TitleDescriptionWidgetState createState() => _TitleDescriptionWidgetState();

}

class _TitleDescriptionWidgetState extends State<TitleDescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          kTitleTextFormField('Title', 24.0,widget.titleInputContoller),
          kTitleTextFormField('Description', 18.0,widget.decriptionInputContoller),
        ],
      ),
    );
  }
}
