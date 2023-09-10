import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:to_do_list/todoItem.dart';
import 'package:to_do_list/todo.dart';
import 'package:weekday_scroller/weekday_scroller.dart';

class home extends StatefulWidget {
  String title, note;
  late int startTime, endTime;

  home({
    super.key,
    required this.title,
    required this.note,
    required this.startTime,
    required this.endTime,
  });

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final List theList = ToDoClass.todoList();

  // get title => this.title;
  //
  // get note => this.note;
  // get startTime => this.startTime;
  // get endTime => this.endTime;

  @override
  void initState() {
    theList;
    super.initState();
  }

  DateTime _selectedDay = DateTime.now();
  var r = Jiffy(DateTime.now()).format("yMMMMEEEEd");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sunny),
        actions: [
          const Icon(Icons.filter_list_alt),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "assets/images/avatar.png",
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text("{$_selectedDay}"),
                  Text(r,style: TextStyle(fontSize: 10),),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("AddTask");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text("+ Add Task ")),
                  ),
                ],
              ),
              Column(
                children: [
                  WeekdayScroller(
                    selectedDay: _selectedDay,
                    changeDay: (value) => setState(() {
                      _selectedDay = value;
                    }),
                    backgroundColor: Colors.white,
                    enableWeeknumberText: false,
                    // weeknumberColor: const Color(0xFF57AF87),
                    // weeknumberTextColor: Colors.white,
                    // backgroundColor: const Color(0xFF1A1A1A),
                    // weekdayTextColor: const Color(0xFF8A8A8A),
                    // digitsColor: Colors.white,
                    // selectedBackgroundColor: const Color(0xFF57AF87),
                    // weekdays: ["Mo", "Tu", "We", "Th", "Fr"],
                    // daysInWeek: 5,
                  ),
                ],
              ),
              for (ToDoClass todoiteem in theList)
                todoitem(
                  todoObject: todoiteem,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
