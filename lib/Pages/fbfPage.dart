import 'package:flutter/material.dart';


class fbfPage extends StatefulWidget {//gerencia o proprio estado
  const fbfPage({Key? key}) : super(key: key);

  @override
  _fbfPageState createState() => _fbfPageState();
}

class _fbfPageState extends State<fbfPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Row(
            children: [ Text('Fórmulas-Bem-Formadas'),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          ),
        ),


      body: Center(

      ),
    );
  }
}