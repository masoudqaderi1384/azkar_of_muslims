import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
            child: Text(
          "در ویرژن های بعدی فعال میشود",
          style: TextStyle(
            fontFamily: "Afghan",
            fontSize: 18,
          ),
        )),
      ),
    );
  }
}
