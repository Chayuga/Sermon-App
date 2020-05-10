import 'package:flutter/material.dart';

class SermonSchedule extends StatefulWidget {
  static const String id = 'sermon_schedule_screen';
  @override
  _SermonScheduleState createState() => _SermonScheduleState();
}

class _SermonScheduleState extends State<SermonSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Give Online'),
      ),
      body: Text('Give Tithe and offerings online'),
    );
  }
}
