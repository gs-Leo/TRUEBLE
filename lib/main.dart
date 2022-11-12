import 'package:flutter/material.dart';
import 'package:trueble/screens/home.dart';
import 'package:trueble/screens/menu.dart';
import 'package:trueble/screens/learnTablesMenu.dart';
import 'package:trueble/screens/fbfPage.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) { // Aqui é onde retorna os widget ( olhar os catalogos depois )
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
          "/OptionsPage": (context) => OptionsPage(),
          "/LearnTableMenu": (context) => LearnTableMenu(),
          "/fbfPage": (context) => fbfPage(),


        });
  }
}

class AppElement  extends Element {
  AppElement(super.widget);

  @override
  // TODO: implement debugDoingBuild
  bool get debugDoingBuild => throw UnimplementedError();

  @override
  void performRebuild() {
    // TODO: implement performRebuild
  }
}