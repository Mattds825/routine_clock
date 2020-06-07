import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:routine_clock/models/task.dart';

class Routine {
  int id;
  TimeOfDay time;
  String taskListId;
  List<Task> taskList;
  String title;
  String description;

  Routine({
    this.description,
    this.taskList,
    this.time,
    this.title,
  });

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'id': id,
        'timeh': time.hour,
        'timem': time.minute,
        'taskListId': taskListId,
      };

  Routine.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        description = json['decription'],
        taskList = json['timeListId'],
        time = TimeOfDay(
          hour: int.parse(json['timeh']),
          minute: int.parse(
            json['timem'],
          ),
        );
}
