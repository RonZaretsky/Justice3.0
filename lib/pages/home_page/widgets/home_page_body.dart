import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:justice3/pages/home_page/home_page_utils.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          child: FittedBox(
            child: FloatingActionButton(
              tooltip: scheduleTooltip,
              child: const Icon(Icons.schedule),
              onPressed: () {},
            ),
          ),
        ),
        Container(
          height: 100.0,
          width: 100.0,
          child: FittedBox(
            child: FloatingActionButton(
              tooltip: crewTooltip,
              child: const Icon(Icons.people),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
