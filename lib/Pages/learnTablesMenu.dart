import 'package:flutter/material.dart';


class LearnTableMenu extends StatefulWidget {//gerencia o proprio estado
  const LearnTableMenu({Key? key}) : super(key: key);

  @override
  _LearnTableMenuState createState() => _LearnTableMenuState();
}

class _LearnTableMenuState extends State<LearnTableMenu> {

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
              child: Text('Aprender Tabelas', style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold, color: Colors.blueGrey)),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              //style: style,
              onPressed: () {},
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