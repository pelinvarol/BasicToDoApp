// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isTaskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? onDelete;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.isTaskCompleted,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
        left: 25,
        right: 25,
      ),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: onDelete,
            icon: Icons.delete,
            backgroundColor: Colors.amber.shade800,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        child: Container(
          padding: EdgeInsets.all(18),
          child: Row(
            children: [
              //checkbox
              Checkbox(
                value: isTaskCompleted,
                onChanged: onChanged,
                activeColor: Colors.deepOrange,
              ),
              //task name
              Text(
                taskName,
                style: GoogleFonts.raleway(
                  decoration: isTaskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.orange[200],
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
