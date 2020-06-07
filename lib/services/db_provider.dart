import 'dart:convert';
import 'dart:io';

import 'package:routine_clock/models/routine_model.dart';
import 'package:routine_clock/models/task.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'package:uuid/uuid.dart';

class Database {
  SharedPreferences prefs;

  Uuid uuid;

  Database() {
    init();
  }

  read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key));
  }

  void init() async {
    prefs = await SharedPreferences.getInstance();
    uuid = Uuid();
  }

  void createTaskReference(Task task) {
    String uid = uuid.v4();
    prefs.setString(uid, json.encode((task..id = uid).toJson()));
  }

  String createTaskListReference(List<Task> taskList) {
    String uid = uuid.v4();
    List<String> taskIds = List();
    taskList.forEach((Task t) {
      taskIds.add(t.id);
    });
    prefs.setStringList(uid, taskIds);
    return uid;
  }

  String createRoutineReference(Routine routine, String tasklistId) {
    routine.taskListId = tasklistId;
    String uid = uuid.v4();
    prefs.setString(uid, json.encode(routine.toJson()));
    return uid;
  }

  void createDbReference(String routineId) {
    List<String> routineIdList = List();
    if (prefs.getStringList('routines') != null) {
      prefs
          .getStringList('routines')
          .forEach((String id) => routineIdList.add(id));
    }
    routineIdList.add(routineId);
    prefs.setStringList('routines', routineIdList);
  }

  void addNewEntry(Routine routine) {
    routine.taskList.forEach((Task t) {
      createTaskReference(t);
    });

    String taskListId = createTaskListReference(routine.taskList);

    String routineId = createRoutineReference(routine, taskListId);

    createDbReference(routineId);
  }

  List<Routine> getRoutines(){
    List<Routine> routineList = List();
    prefs.getStringList('routines').forEach((String key) async{
      Routine r = Routine.fromJson(await read(key));
      routineList.add(r);
    });
    return routineList;
  }
}
