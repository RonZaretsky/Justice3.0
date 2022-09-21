// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
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
                      //TODO: implement addition of new member
                      Member member = Member(
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
              child: Container(
                margin: EdgeInsets.all(30.0),
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white.withOpacity(0.4),
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 5.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 50.0,
                        offset: Offset(2.0, 2.0))
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: BuildDataTable(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
