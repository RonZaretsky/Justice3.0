import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:justice3/global/global_consts.dart';
import 'package:justice3/models/member_model.dart';

class CrewPageBody extends StatelessWidget {
  const CrewPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    getMember(context);

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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            rows: const [],
            columns: const [
              DataColumn(label: Text('שם')),
              DataColumn(label: Text('label2')),
              DataColumn(label: Text('label3')),
              DataColumn(label: Text('label4')),
            ],
          ),
        )
      ],
    );
  }

  void getMember(BuildContext context) async {
    final file = await rootBundle.loadString('assets/lists/MembersList.json');

    // final json = jsonDecode(file);

    final members = membersFromJson(file);

    print(members[0]);
    // print(json);
  }
}
