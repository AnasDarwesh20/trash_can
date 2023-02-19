import 'package:flutter/material.dart';
import '../../styles/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Text(
          'Home ',
        )),
      ),
    );
  }
}
