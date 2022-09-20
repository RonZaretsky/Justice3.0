import 'package:flutter/material.dart';

import '../pages/home_page/home_page_utils.dart';

PreferredSizeWidget GlobalAppBar({required String appbarTitle}) {
  return AppBar(
    leading: Image.asset("assets/images/Iftah.png"),
    centerTitle: true,
    title: Text(
      appbarTitle,
      textAlign: TextAlign.center,
    ),
  );
}
