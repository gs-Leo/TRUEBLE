import 'package:flutter/material.dart';

button(BuildContext context) {

  final  ElevatedButtonTheme = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    backgroundColor: Colors.blueGrey,
    minimumSize: Size(300, 45),
    padding: EdgeInsets.symmetric(horizontal: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    textStyle: TextStyle(fontSize: 18),
  );
  return ElevatedButtonTheme;

}
