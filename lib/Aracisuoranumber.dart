import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/toarabicnumber.dart';

class arcicsouranumber extends StatelessWidget {
  const arcicsouranumber({super.key, required this.i});
  final int i;

  @override
  Widget build(BuildContext context) {
    return Text(
      "\uFD3E" + (i + 1).toString().toArabicNumbers + "\uFD3F",
      style: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontFamily: 'Amiri Quran',
        fontSize: 20,
        shadows: [
        Shadow(
          offset: Offset(.5, .5),
          blurRadius: 1.0,
          color: Colors.amberAccent,
        ),
        ],
      ),
    );
  }
}
