import 'package:flutter/material.dart';
import 'package:justice3/global_utils/global_appbar.dart';
import 'package:justice3/pages/schedule_page/schedule_page_utils.dart';
import 'package:justice3/pages/schedule_page/widgets/schedule_page_body.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: GlobalAppBar(appbarTitle: scheduleAppbarTitle),
      body: const SchedulePageBody(),
    );
  }
}
