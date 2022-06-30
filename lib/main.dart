import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'pages/home_assignment_one.dart';
import 'pages/home_assignment_two.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('user_login');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const HomeAssignmentOne(),
      routes: {
        HomeAssignmentOne.id: (context) => const HomeAssignmentOne(),
        HomeAssignmentTwo.id: (context) => const HomeAssignmentTwo(),
      },
    );
  }
}
