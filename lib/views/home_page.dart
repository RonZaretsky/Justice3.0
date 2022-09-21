import 'package:flutter/material.dart';
import 'package:justice3/global/home_page_consts.dart';
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/widgets/home_page/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: GeneralAppar(appbarTitle: homePageTitle),
      body: const Center(child: HomePageBody()),
    );
  }
}
