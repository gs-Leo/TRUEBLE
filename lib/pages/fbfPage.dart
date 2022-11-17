import 'package:flutter/material.dart';
import 'package:trueble/widgets/alertDialogMenu.dart';

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
      body: Center(
        child : Scrollbar(
        child: SingleChildScrollView(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              alignment: Alignment.topCenter,
              child: Text('Composição de uma FBF',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
            ),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.center,
                width: 350,
                height: 200,
                padding: const EdgeInsets.all(10),
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
                      'Fórmulas-Bem-Formadas (FBFs) são construídas utilizando:',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('- Variáveis proposicionais (p, q, r...); '),
                    Text('- Operadores lógicos (~, ^, v, ->, <->);'),
                    Text(
                        '- Em alguns casos, precisamos fazer uso de parênteses ( ).',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Exemplo: (p -> q) v r'),
                  ],
                )),

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
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                        width: 32,
                        child: Text(
                          'Negação',
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 32,
                        width: 32,
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
                        width: 32,
                        child: Text(
                          'Condicional',
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 32,
                        width: 32,
                        child: Text(
                          '->',
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
                        width: 32,
                        child: Text(
                          'Bicondicional',
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 32,
                        width: 32,
                        child: Text(
                          '<->',
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
                        width: 32,
                        child: Text(
                          'Disjunção',
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 32,
                        width: 32,
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
                        width: 32,
                        child: Text(
                          'Conjunção',
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 32,
                        width: 32,
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
                alignment: Alignment.center,
                width: 350,
                height: 450,
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
                      'Formato de uma FBF',
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('Uma FBF pode estar conectada por operadores \n binários'
                    ' (^, v, ->, <->) ou ter somente um operador \n unário (~) (ou não).',
                      textAlign: TextAlign.center,),

                    Text('Ela pode ser: \n  - Uma variável proposicional sem operadores lógicos. \n'
                    'Exemplo: p'),

                    Text('- Ela também pode utilizar somente a negação. \n'
                        'Exemplo: ~p'),

                    Text('- Ou ser uma fórmula inteira negada. \n'
                        'Exemplo: (~ (p -> (q v r)))'),

                    Text('- Outro formato adotado é quando ela utiliza operadores binários. \n'
                        'Exemplo: (p v q), (p <-> q) ^ r'),

                    Text('- Por fim, as fórmulas podem fazer uma mistura de tudo.\n'
                        'Exemplo: p -> ~ (q v r)'),

                  ],
                ),
            ),
            SizedBox(height: 20),
          ],
        ),
        )
        ),
      ),
    );
  }
}
