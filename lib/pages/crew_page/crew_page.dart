import 'package:flutter/material.dart';
import 'package:justice3/global_utils/global_appbar.dart';

import 'crew_page_utils.dart';
import 'widgets/crew_page_body.dart';

class CrewPage extends StatelessWidget {
  const CrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: GlobalAppBar(appbarTitle: crewAppbarTitle),
      body: const CrewPageBody(),
    );
  }
}
