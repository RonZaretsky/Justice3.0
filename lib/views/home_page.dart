import 'package:flutter/material.dart';
import 'package:justice3/blocs/members_list/members_list_bloc.dart';
import 'package:justice3/global/home_page_consts.dart';
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/widgets/home_page/home_page_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MembersListBloc, MembersListState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: GeneralAppBar(appbarTitle: homePageTitle),
          body: const Center(child: HomePageBody()),
        );
      },
    );
  }
}
