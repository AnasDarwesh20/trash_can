import 'package:flutter/material.dart';
import 'package:trash_can/layout/home/home_screen.dart';

import 'styles/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trash Can",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: mainColor),
      home: HomeScreen(),
    );
  }
}
