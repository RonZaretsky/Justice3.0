import 'package:flutter/material.dart';
import 'package:justice3/global/crew_page_consts.dart';
import 'package:justice3/widgets/crew_page/crew_page_body.dart';
import 'package:justice3/widgets/general_appbar.dart';

class CrewPage extends StatelessWidget {
  const CrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: GeneralAppBar(appbarTitle: crewAppbarTitle),
      body: const CrewPageBody(),
    );
  }
}
