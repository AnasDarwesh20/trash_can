import 'package:flutter/material.dart';

// Hi anas
// rubbish image
const String rubbish = 'lib/assets/rubbish.png';
// Colors
const Color mainColor = Color.fromRGBO(54, 255, 4, 100);
const Color glowColor = Color.fromRGBO(18, 145, 6, 1);
// Text style
const TextStyle ourStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Anaqa');

// MyBox is our custem container widget
// takes constractors
// (h for height) (w for width)
// (c1 for the boox color)
// (isCircle is by defult false )
// (onClick is obtinal for clicking action)
Widget myBox({
  required int h,
  required int w,
  required Color c1,
  bool isCircle = false,
  required Widget child,
  final onClick,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onClick == null ? () {} : onClick,
      child: Container(
        child: Center(
          child: child,
        ),
        width: w.toDouble(),
        height: h.toDouble(),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: glowColor,
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: Offset(0, 8))
            ],
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            color: c1,
            borderRadius:
                isCircle ? null : BorderRadius.all(Radius.circular(20))),
      ),
    ),
  );
}

Widget custemTF({required IconData icn, final saved}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'ادخل المطلوب هنا';
        }
      },
      onSaved: saved,
      decoration: InputDecoration(
          icon: Icon(
            icn,
            color: mainColor,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: mainColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: mainColor)),
          fillColor: mainColor,
          filled: true,
          focusColor: mainColor),
    ),
  );
}
