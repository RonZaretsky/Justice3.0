import 'package:flutter/material.dart';
import 'package:justice3/global/schedule_page_consts.dart';
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/widgets/schedule_page/schedule_page_body.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: GeneralAppar(appbarTitle: scheduleAppbarTitle),
      body: const SchedulePageBody(),
    );
  }
}
