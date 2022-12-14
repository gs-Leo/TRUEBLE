import 'package:flutter/material.dart';
import 'package:trueble/pages/home.dart';
import 'package:trueble/pages/menu.dart';
import 'package:trueble/pages/learnTablesMenu.dart';
import 'package:trueble/pages/fbfPage.dart';
import 'package:trueble/pages/ordemPrecedencia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Aqui é onde retorna os widget ( olhar os catalogos depois )
    return MaterialApp(
        title: 'TRUEBLE',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),

            headline2: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black),

            bodyText1: TextStyle(fontSize: 20,)
          ),

        ),
        debugShowCheckedModeBanner: false,
        //ROTAS
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
          "/Menu": (context) => Menu(),
          "/LearnTableMenu": (context) => LearnTableMenu(),
          "/fbfPage": (context) => fbfPage(),
          "/ordemPrecedencia": (context) => ordemPrecedencia(),
        });
  }
}

class AppElement extends Element {
  AppElement(super.widget);

  @override
  // TODO: implement debugDoingBuild
  bool get debugDoingBuild => throw UnimplementedError();

  @override
  void performRebuild() {
    // TODO: implement performRebuild
  }
}
