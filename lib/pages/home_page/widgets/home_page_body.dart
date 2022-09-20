import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:justice3/pages/home_page/home_page_utils.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          titleText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
          ),
        ),
        const SizedBox(height: 200.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(width: 50.0),
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
        ),
      ],
    );
  }
}
