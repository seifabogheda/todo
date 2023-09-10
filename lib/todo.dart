import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class ToDoClass {
  String id = "1";
  String title = " title";
  String note = "note";
  DateTime? date;
  DateTime? startTime;
  DateTime? endTime;
  Color color;

  ToDoClass({
    required this.id,
    required this.title,
    required this.note,
    required this.startTime,
    required this.endTime,
    this.color = Colors.blue,
  });

  static List<ToDoClass> todoList() {
    return [
      ToDoClass(
        id: "1 ",
        title: "tt",
        note: "vvvvvv",
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      ),
      ToDoClass(
        id: " 2",
        title: "rr",
        note: "vv",
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      ),
      ToDoClass(
        id: "3",
        title: "ee",
        note: "s",
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      ),
      ToDoClass(
        id: "1 ",
        title: "tt",
        note: "vvvvvv",
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      ),
    ];
  }
}
