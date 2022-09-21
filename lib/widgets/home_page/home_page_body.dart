import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:justice3/blocs/members_list/members_list_bloc.dart';
import 'package:justice3/global/home_page_consts.dart';
import 'package:justice3/views/crew_page.dart';
import 'package:justice3/views/schedule_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            SizedBox(
              height: 100.0,
              width: 100.0,
              child: FittedBox(
                child: FloatingActionButton(
                  heroTag: scheduleNavBtnHerotag,
                  tooltip: scheduleTooltip,
                  child: const Icon(Icons.schedule),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SchedulePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 50.0),
            SizedBox(
              height: 100.0,
              width: 100.0,
              child: FittedBox(
                child: FloatingActionButton(
                  heroTag: crewNavBtnHerotag,
                  tooltip: crewTooltip,
                  child: const Icon(Icons.people),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          context.read<MembersListBloc>().add(
                              LoadMembersJsonEvent(
                                  jsonPath: 'assets/lists/MembersList.json'));
                          return const CrewPage();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
