import 'package:flutter/material.dart';
<<<<<<<< HEAD:lib/views/home_page.dart
import 'package:justice3/global/home_page_consts.dart';
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/widgets/home_page/home_page_body.dart';
========
import 'package:justice3/widgets/general_appbar.dart';
import 'package:justice3/view/home_page/home_page_utils.dart';
import 'package:justice3/view/home_page/widgets/home_page_body.dart';
>>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a:lib/view/home_page.dart

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
<<<<<<<< HEAD:lib/views/home_page.dart
      appBar: GeneralAppar(appbarTitle: homePageTitle),
========
      appBar: GeneralAppBar(appbarTitle: homePageTitle),
>>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a:lib/view/home_page.dart
      body: const Center(child: HomePageBody()),
    );
  }
}
