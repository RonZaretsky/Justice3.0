import 'package:flutter/material.dart';
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/view/home_page/home_page_utils.dart';
import 'package:justice3/view/home_page/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: GeneralAppBar(appbarTitle: homePageTitle),
      body: const Center(child: HomePageBody()),
    );
  }
}
