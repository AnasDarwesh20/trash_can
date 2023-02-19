import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
          elevation: 0.0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 110,
              child: Text('data'),
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
        ),
        body: Center(
            child: Text(
          'Home ',
        )),
      ),
    );
  }
}
