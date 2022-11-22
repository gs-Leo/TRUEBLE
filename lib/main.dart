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
    final ButtonStyle ElevatedButtonTheme = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[300],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
