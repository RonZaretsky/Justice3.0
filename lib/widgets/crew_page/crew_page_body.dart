import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:justice3/blocs/members_list/members_list_bloc.dart';
import 'package:justice3/global/global_consts.dart';
import 'package:justice3/models/member_model.dart';
import 'package:justice3/widgets/crew_page/crew_page_datatable.dart';

class CrewPageBody extends StatelessWidget {
  const CrewPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FloatingActionButton(
                    heroTag: 'aa',
                    tooltip: homeTooltip,
                    onPressed: () {
                      Member member = new Member(
                          uuid: 'uuid',
                          fullName: 'fullName',
                          personalNumber: 12345,
                          memberRank: 'memberRank',
                          phoneNumber: 'phoneNumber',
                          isCommander: true,
                          lastRegularDay: DateTime.now(),
                          lastShabat: DateTime.now(),
                          lastHoliday: DateTime.now(),
                          beforeLastShabat: DateTime.now(),
                          notAvailableUntil: DateTime.now(),
                          section: 'section',
                          releaseDate: DateTime.now(),
                          kevaDate: DateTime.now(),
                          regularDayFreq: 3,
                          shabatFreq: 3,
                          birthday: DateTime.now());
                      context
                          .read<MembersListBloc>()
                          .add(AddMemberEvent(newMember: member));
                      // print(BlocProvider.of<MembersListBloc>(context,
                      //         listen: false)
                      //     .state
                      //     .membersList
                      //     .toString());
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
                Text(context
                    .watch<MembersListBloc>()
                    .state
                    .membersList
                    .length
                    .toString()),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: BuildDataTable(context),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
