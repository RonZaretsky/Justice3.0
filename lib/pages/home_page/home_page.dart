import 'package:flutter/material.dart';
import 'package:justice3/pages/home_page/home_page_utils.dart';
import 'package:justice3/pages/home_page/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        leading: Image.asset("assets/images/Iftah.png"),
        centerTitle: true,
        title: const Text(
          homePageTitle,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(child: HomePageBody()),
    );
  }
}
