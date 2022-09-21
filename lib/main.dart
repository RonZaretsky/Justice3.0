import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:justice3/views/home_page.dart';
=======
import 'package:justice3/view/home_page/home_page.dart';
>>>>>>> 09e8448536eaaf1e6005a9c98356968200c35d2a

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Justince 3.0',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
