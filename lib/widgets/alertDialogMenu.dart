import 'package:flutter/material.dart';

showAlertDialogMenu(BuildContext context) {
  Widget cancelaButton = TextButton(
    child: Text("Cancelar"),
    onPressed: () {Navigator.pop(context);},
  );
  Widget continuaButton = TextButton(
    child: Text("Confirmar"),
    onPressed: () {
      Navigator.pushNamedAndRemoveUntil(context, '/Menu', ModalRoute.withName('/Menu'),);
},
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Center(
      child: Icon(
        Icons.info_outline,
        size: 40,
      ),
    ),
    content: Text(
        "Você está saindo do aplicativo. Deseja retornar ao Menu Principal?"),
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


alertFbf(BuildContext context) {
  Widget cancelaButton = TextButton(
    child: Text("Menu"),
    onPressed: () { Navigator.pushNamedAndRemoveUntil(context, '/Menu', ModalRoute.withName('/Menu'));},
  );
  Widget continuaButton = TextButton(
    child: Text("Prosseguir"),
    onPressed: () {
      Navigator.pushNamed(context, '/ordemPrecedencia');
    },
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Center(
      child: Icon(
        Icons.info_outline,
        size: 40,
      ),
    ),
    content: Text(
        "Parabéns!! Agora que você revisou sobre Formulas-Bem-Formadas, "
            "precisamos estudar o restante dos conceitos. Deseja prosseguir?"),
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





alertOrdemPrecedencia(BuildContext context) {
  Widget cancelaButton = TextButton(
    child: Text("Menu"),
    onPressed: () { Navigator.pushNamedAndRemoveUntil(context, '/Menu', ModalRoute.withName('/Menu'));},
  );
  Widget continuaButton = TextButton(
    child: Text("Prosseguir"),
    onPressed: () {
      Navigator.pushNamed(context, '/semantica');
    },
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Center(
      child: Icon(
        Icons.info_outline,
        size: 40,
      ),
    ),
    content: Text(
        "Parabéns!! Agora que você revisou sobre Semântica dos operadores lógicos, "
            "precisamos estudar o restante dos conceitos. Deseja prosseguir?",
    textAlign: TextAlign.justify,),
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

alertSemantica(BuildContext context) {
  Widget cancelaButton = TextButton(
    child: Text("Menu"),
    onPressed: () { Navigator.pushNamedAndRemoveUntil(context, '/Menu', ModalRoute.withName('/Menu'));},
  );
  Widget continuaButton = TextButton(
    child: Text("Prosseguir"),
    onPressed: () {
      Navigator.pushNamed(context, '/Menu'); // mudar para Classificação e Satisfazibilidade
    },
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Center(
      child: Icon(
        Icons.info_outline,
        size: 40,
      ),
    ),
    content: Text(
      "Parabéns!! Agora que você revisou sobre Ordem de Precedência, "
          "precisamos estudar o restante dos conceitos. Deseja prosseguir?",
      textAlign: TextAlign.justify,),
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

