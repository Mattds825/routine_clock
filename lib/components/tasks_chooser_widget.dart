import 'package:flutter/material.dart';
import 'package:routine_clock/components/task_creator_dialog.dart';
import 'package:routine_clock/constants.dart';
import 'package:routine_clock/models/task.dart';

class TasksChooserWidget extends StatefulWidget {

  List<Task> taskList = List<Task>();

  @override
  _TasksChooserWidgetState createState() => _TasksChooserWidgetState();
}

class _TasksChooserWidgetState extends State<TasksChooserWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tasks',
              style: kCreateRoutineTitle,
            ),
          )),
          Expanded(
            flex: 2,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: _getTaskList(),
            ),
          ),
          Expanded(
            child: Center(
              child: IconButton(
                icon: Icon(Icons.add, color: Colors.white),
                onPressed: () {
                  showDialog(context: context, builder: (BuildContext context){
                    return TaskCreationDialog();
                  }).then((t) {
                    setState(() {
                      widget.taskList.add(t);
                    });
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getTaskList() {
    return List.generate(
      widget.taskList.length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          widget.taskList.elementAt(index).title,
          style: kCreateRoutineItemsTitle,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
