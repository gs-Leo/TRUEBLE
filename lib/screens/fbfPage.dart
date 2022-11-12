import 'package:flutter/material.dart';
import 'package:trueble/widgets/alertDialogMenu.dart';


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
              IconButton(onPressed: (){showAlertDialogMenu(context);},
                  icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          ),
        ),


      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            alignment: Alignment.topCenter,
            child: Text('Composição de uma FBF', style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold, color: Colors.blueGrey)),
          ),
          Container(
            alignment: Alignment.center,
            width: 300,
            height: 200,
            color: Colors.blue,
            child:Column(
              children: <Widget>[
                Text('Fórmulas-Bem-Formadas (FBFs) são construídas utilizando:',
                  textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text('variáveis proposicionais (p, q, r...) '),
                        Text('operadores lógicos (~, ^, v, ->, <->)'),
                        Text('E em alguns casos, precisamos fazer uso de parênteses ( ).'),
              ],
            )
          ),

          Container(
              alignment: Alignment.center,
              width: 300,
              height: 200,
              color: Colors.green,
              child:Column(
                children: <Widget>[
                  Text('Fórmulas-Bem-Formadas (FBFs) são construídas utilizando:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('variáveis proposicionais (p, q, r...) '),
                  Text('operadores lógicos (~, ^, v, ->, <->)'),
                  Text('E em alguns casos, precisamos fazer uso de parênteses ( ).'),
                ],
              )
          ),

  ]
    ),
    ),
    );
  }
}