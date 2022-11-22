import 'package:flutter/material.dart';
import 'package:trueble/widgets/widgetsTheme.dart';

class LearnTableMenu extends StatefulWidget {
  //gerencia o proprio estado
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
              child: Text('Aprender Tabelas',
                  style: tittle(context)),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: button(context),
              onPressed: () {
                Navigator.pushNamed(context, '/fbfPage');
              },
              child: const Text('Fórmula-Bem-Formada'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: button(context),
              onPressed: () {},
              child: const Text('Ordem de Precedência'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: button(context),
              onPressed: () {},
              child: const Text('Semântica'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: button(context),
              onPressed: () {},
              child: const Text('Classificação e Satisfazibilidade'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: button(context),
              onPressed: () {},
              child: const Text('Validação de Argumentos'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: button(context),
              onPressed: () {},
              child: const Text('Consequência e Equivalência'),
            ),
          ],
        ),
      ),
    );
  }
}