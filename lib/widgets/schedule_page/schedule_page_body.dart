import 'package:flutter/material.dart';
import 'package:justice3/global/global_consts.dart';

class SchedulePageBody extends StatelessWidget {
  const SchedulePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            heroTag: homeNavBtnHerotag,
            tooltip: homeTooltip,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.home),
          ),
        ),
        Container(),
      ],
    );
  }
}
