import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //gerencia o proprio estado
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('TABELAS VERDADE'),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/logo.png"),
            /*Text('Toque para Iniciar',
              style: TextStyle(
                fontSize: 25 ),
            ),*/
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Menu');
              },
              child: Text(
                'Toque para Iniciar',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
