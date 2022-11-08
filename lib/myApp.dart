import 'package:flutter/material.dart';
import 'package:trueble/Controller/homeController.dart';
import 'package:trueble/Pages/homePage.dart';
import 'package:trueble/Pages/optionsPage.dart';

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