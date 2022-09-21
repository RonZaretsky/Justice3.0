import 'package:flutter/material.dart';
import 'package:justice3/global/global_consts.dart';

PreferredSizeWidget GeneralAppBar({required String appbarTitle}) {
  return AppBar(
    leading: Column(
      children: [
        Image.asset(
          iftahLogoPath,
          height: 45.0,
        ),
        Text(
          currerntVersion,
          style: TextStyle(fontSize: 10.0),
        ),
      ],
    ),
    centerTitle: true,
    title: Text(
      appbarTitle,
      textAlign: TextAlign.center,
    ),
  );
}
