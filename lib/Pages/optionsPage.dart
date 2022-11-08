import 'package:flutter/material.dart';


class OptionsPage extends StatefulWidget {//gerencia o proprio estado
  const OptionsPage({Key? key}) : super(key: key);

  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: Column(
          children: [Text('Menu Principal'),
            ElevatedButton(
              child: Text('RaisedButton Ativo'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('RaisedButton Inativo'),
              onPressed: null,
            ),],
        ),
      ),
    );
  }
}