import 'package:flutter/material.dart';

import '../view/home_page/home_page_utils.dart';

PreferredSizeWidget GeneralAppBar({required String appbarTitle}) {
  return AppBar(
    leading: Image.asset("assets/images/Iftah.png"),
    centerTitle: true,
    title: Text(
      appbarTitle,
      textAlign: TextAlign.center,
    ),
  );
}
