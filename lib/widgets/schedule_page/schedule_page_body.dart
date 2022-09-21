import 'package:flutter/material.dart';

class SchedulePageBody extends StatelessWidget {
  const SchedulePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.home),
          ),
        ),
      ],
    );
  }
}
