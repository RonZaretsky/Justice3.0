import 'package:flutter/material.dart';
<<<<<<<< HEAD:lib/views/schedule_page.dart
import 'package:justice3/global/schedule_page_consts.dart';
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/widgets/schedule_page/schedule_page_body.dart';
========
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/view/schedule_page/schedule_page_utils.dart';
import 'package:justice3/view/schedule_page/widgets/schedule_page_body.dart';
>>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a:lib/view/schedule_page.dart

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
<<<<<<<< HEAD:lib/views/schedule_page.dart
      appBar: GeneralAppar(appbarTitle: scheduleAppbarTitle),
========
      appBar: GeneralAppBar(appbarTitle: scheduleAppbarTitle),
>>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a:lib/view/schedule_page.dart
      body: const SchedulePageBody(),
    );
  }
}
