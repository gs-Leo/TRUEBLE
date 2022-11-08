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
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Text('Menu Principal', style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold, color: Colors.blueGrey)),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            //style: style,
            onPressed: () {Navigator.pushNamed(context, '/LearnTableMenu');},
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