import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routine_clock/constants.dart';
import 'package:routine_clock/models/task.dart';

class TaskCreationDialog extends StatefulWidget {
  TextEditingController titleInputContoller = TextEditingController();
  TextEditingController decriptionInputContoller = TextEditingController();
  @override
  _TaskCreationDialogState createState() => _TaskCreationDialogState();
}

class _TaskCreationDialogState extends State<TaskCreationDialog>
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
    return ScaleTransition(
      scale: scaleAnimation,
      child: AlertDialog(
        backgroundColor: kColor2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        //title: Text('Share'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kTitleTextFormField('title', 28.0, widget.titleInputContoller),
            kTitleTextFormField('Description', 18.0, widget.decriptionInputContoller),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Close",
              style: TextStyle(color: kColor3),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text(
              "Add",
              style: TextStyle(color: Colors.blueGrey),
            ),
            onPressed: () {
              Task t = Task(title: widget.titleInputContoller.text, description: widget.decriptionInputContoller.text);
              Navigator.of(context).pop(t);
            },
          ),
        ],
      ),
    );
  }
}
