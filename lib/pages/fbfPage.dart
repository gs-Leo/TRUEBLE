import 'package:flutter/material.dart';
import 'package:trueble/widgets/alertDialogMenu.dart';
import 'package:trueble/widgets/ButtonTheme.dart';

class fbfPage extends StatefulWidget {
  //gerencia o proprio estado
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fórmulas \nBem Formadas',textAlign: TextAlign.left,),
              IconButton(
                onPressed: () {
                  showAlertDialogMenu(context);
                },
                alignment: Alignment.centerRight,
                icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text('Composição de uma FBF',
                        style: Theme.of(context).textTheme.headline2),
                  ),
                  SizedBox(height: 20),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(4, 4)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                              'Fórmulas-Bem-Formadas (FBFs) são construídas utilizando: \n'),
                          Text('Variáveis proposicionais (p, q, r...); \n'),
                          Text('Operadores lógicos (~, ^, v, ->, <->); \n'),
                          Text(
                              'Em alguns casos, precisamos fazer uso de parênteses ( ). \n'),
                          Text('Exemplo: (p -> q) v r'),
                        ],
                      )
                  ),
                  SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(),
                    defaultColumnWidth: FixedColumnWidth(170),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              width: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: Text(
                                'Operador Lógico',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              width: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: Text(
                                'Símbolo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                'Negação',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                '¬',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                'Condicional',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                '→',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                'Bicondicional',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                '↔',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                'Disjunção',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                'v',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                'Conjunção',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              child: Text(
                                '^',
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text('Formato de uma FBF',
                        style: Theme.of(context).textTheme.headline2),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Uma FBF pode estar conectada por operadores binários'
                          ' (^, v, ->, <->) ou ter somente um operador unário (~) (ou não). Ela pode ser:  \n',
                        ),
                        Text(
                          'Uma variável proposicional sem operadores lógicos. \n'
                          'Exemplo: p',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Ela também pode utilizar '
                          'somente a negação. \n'
                          'Exemplo: ~p',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '- Ou ser uma fórmula inteira negada. \n'
                          'Exemplo: (~ (p -> (q v r)))',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '- Outro formato adotado é quando ela utiliza operadores binários. \n'
                          'Exemplo: (p v q), (p <-> q) ^ r',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '- Por fim, as fórmulas podem fazer uma mistura de tudo.\n'
                          'Exemplo: p -> ~ (q v r)',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text('Faça você mesmo',
                        style: Theme.of(context).textTheme.headline2),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Quais fórmulas são FBFs?',
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: button(context),
                    onPressed: () {
                      alertFbf(context);
                    },
                    child: const Text('Finalizar tópico'),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
