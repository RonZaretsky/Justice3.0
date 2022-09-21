import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:justice3/global/global_consts.dart';

PreferredSizeWidget GeneralAppar({required String appbarTitle}) {
  return AppBar(
    leading: Column(
      children: [
        Image.asset(
          iftahLogoPath,
          height: 44.0,
        ),
        const Text(
          currentVersion,
          style: TextStyle(fontSize: 10.0),
        ),
      ],
    ),
=======

import '../view/home_page/home_page_utils.dart';

PreferredSizeWidget GeneralAppBar({required String appbarTitle}) {
  return AppBar(
    leading: Image.asset("assets/images/Iftah.png"),
>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a
    centerTitle: true,
    title: Text(
      appbarTitle,
      textAlign: TextAlign.center,
    ),
  );
}
