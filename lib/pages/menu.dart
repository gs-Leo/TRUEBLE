import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  //gerencia o proprio estado
  const Menu({Key? key}) : super(key: key);



  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Text('Menu Principal',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              //style: ButtonStyle(),
              onPressed: () {
                Navigator.pushNamed(context, '/LearnTableMenu');
              },
              child: const Text('Aprender Tabelas'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              //style: style,
              onPressed: null,
              child: const Text('Construir Tabelas'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              //style: style,
              onPressed: null,
              child: const Text('Verificar Tabelas'),
            ),
          ],
        ),
      ),
    );
  }
}
