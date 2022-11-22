import 'package:flutter/material.dart';


button(BuildContext context) {

  final ButtonStyle ElevatedButtonTheme = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    backgroundColor: Colors.blueGrey,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
  return ElevatedButtonTheme;
}


tittle (BuildContext context) {
  final TextStyle tittlePage = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey,
  );
  return tittlePage;
}

tittleContent (BuildContext context) {
  final TextStyle tittleContent = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,

  );
  return tittleContent;
}

content (BuildContext context) {

  final TextStyle content =
  TextStyle(
    fontSize: 20,
  );
  return content;
}

container (BuildContext ){
  final Container container = Container(
    alignment: Alignment.center,
    width: 350,
    height: 450,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(4, 4)),
      ],
    ),
  );
  return container;
}
