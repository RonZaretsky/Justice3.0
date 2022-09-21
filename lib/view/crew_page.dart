import 'package:flutter/material.dart';
<<<<<<<< HEAD:lib/views/crew_page.dart
import 'package:justice3/global/crew_page_consts.dart';
========
>>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a:lib/view/crew_page.dart
import 'package:justice3/widgets/general_appbar.dart';

import '../../widgets/crew_page/crew_page_body.dart';

class CrewPage extends StatelessWidget {
  const CrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
<<<<<<<< HEAD:lib/views/crew_page.dart
      appBar: GeneralAppar(appbarTitle: crewAppbarTitle),
========
      appBar: GeneralAppBar(appbarTitle: crewAppbarTitle),
>>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a:lib/view/crew_page.dart
      body: const CrewPageBody(),
    );
  }
}
