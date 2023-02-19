import 'package:flutter/material.dart';
import 'package:trash_can/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            button(
              text: 'TrashIt' ,
              isUpper: false ,
            ),

            SizedBox(
              height: 10.0,
            ) ,



          ],
        ),
      ),
    );
  }
}
