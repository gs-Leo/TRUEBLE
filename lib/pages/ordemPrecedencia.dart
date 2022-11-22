import 'package:flutter/material.dart';

import '../widgets/alertDialogMenu.dart';


class ordemPrecedencia extends StatefulWidget {
//gerencia o proprio estado
  const ordemPrecedencia({Key? key}) : super(key: key);

  @override
  _ordemPrecedenciaState createState() => _ordemPrecedenciaState();
}

class _ordemPrecedenciaState extends State<ordemPrecedencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Row(
            children: [
              Text('Fórmulas-Bem-Formadas'),
              IconButton(
                onPressed: () {
                  showAlertDialogMenu(context);
                },
                icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ),
      ),
      body: Center(),
    );
  }
}
