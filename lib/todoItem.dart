import 'package:flutter/material.dart';
import 'package:to_do_list/todo.dart';
import 'package:jiffy/jiffy.dart';

class todoitem extends StatelessWidget {
  //
  final ToDoClass todoObject;
  const todoitem({super.key, required this.todoObject});
  // const todoitem({Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        tileColor: Colors.teal,
        title: Text(todoObject.title, style: const TextStyle(fontSize: 12)),
        subtitle: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    const Icon(Icons.access_time),
                    const SizedBox(
                      width: 5,
                    ),

                    Row(
                      children: [
                        Text(
                          Jiffy(todoObject.startTime).format("MMMM do yy"),
                          style: const TextStyle(fontSize: 12),
                        ),
                        const Text(" - "),
                        Text(Jiffy(todoObject.endTime).format("MMMM do yy"),
                            style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Text(todoObject.note),
          ],
        ),
        isThreeLine: true,
        trailing: RotatedBox(
          quarterTurns: 3,
          child: RichText(
            text: TextSpan(
              text: 'TODO',
              style: DefaultTextStyle.of(context).style,

              // children: [
              //   WidgetSpan(
              //     child: RotatedBox(quarterTurns: -1, child: Text('😃')),
              //   )
              // ],
            ),
          ),
        ),
        // Container(
        //   child: Row(
        //     children: [
        //       // const VerticalDivider(
        //       //   width: 20,
        //       //   thickness: 1,
        //       //   indent: 20,
        //       //   endIndent: 0,
        //       //   color: Colors.grey,
        //       // ),
        //     RotatedBox(
        //       quarterTurns: 1,
        //       child: RichText(
        //         text: TextSpan(
        //           text: 'Hello World',
        //           style: DefaultTextStyle.of(context).style,
        //           children: [
        //             WidgetSpan(
        //               child: RotatedBox(quarterTurns: -1, child: Text('😃')),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //     Text("ToDo",
        //       // textAlign: TextAlignVertical(2)
        //     ),
        //
        //   ],),
        // )

        // VerticalDivider(width: 5,),
      ),
    );
  }
}
