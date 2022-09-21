import 'package:flutter/material.dart';
import 'package:justice3/blocs/members_list/members_list_bloc.dart';
import 'package:justice3/global/crew_page_consts.dart';
import 'package:justice3/widgets/crew_page/crew_page_body.dart';
import 'package:justice3/widgets/general_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CrewPage extends StatelessWidget {
  const CrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MembersListBloc, MembersListState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: GeneralAppBar(appbarTitle: crewAppbarTitle),
          body: const CrewPageBody(),
        );
      },
    );
  }
}
