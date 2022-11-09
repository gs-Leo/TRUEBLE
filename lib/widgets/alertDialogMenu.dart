import 'dart:io';

import 'package:flutter/material.dart';


showAlertDialogMenu(BuildContext context) {
  Widget cancelaButton = TextButton(
    child: Text("Cancelar"),
    onPressed:  () {},
  );
  Widget continuaButton = TextButton(
    child: Text("Confirmar"),
    onPressed:  () {Navigator.pushNamed(context, '/OptionsPage');},
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Center( child: Icon(Icons.info_outline, size: 40,),),
    content: Text("Você está saindo do aplicativo. Deseja retornar ao Menu Principal?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );
  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}