import 'package:flutter/material.dart';
import 'package:justice3/blocs/members_list/members_list_bloc.dart';
import 'package:justice3/views/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  DateTime test = DateTime.now();
  print(test.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MembersListBloc>(
          create: (context) => MembersListBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Justince 3.0',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
