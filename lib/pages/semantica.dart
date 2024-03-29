import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/ButtonTheme.dart';
import '../widgets/alertDialogMenu.dart';

class semantica extends StatefulWidget{

  const semantica ({Key? key}) : super(key: key);

  @override
  _semanticaState createState() => _semanticaState();

}

class _semanticaState extends State<semantica> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Semântica'),
            IconButton(
              onPressed: () {
                showAlertDialogMenu(context);
              },
              alignment: Alignment.centerRight,
              icon: const Icon(Icons.exit_to_app),
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
              child: Column(mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Row(
                    //alignment: Alignment.topCenter,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text('Semântica dos \nOperadores Lógicos',
                          style: Theme.of(context).textTheme.headline2,
                          //textAlign: TextAlign.center
                     ),
                      IconButton(
                        onPressed: () {
                          //showAlertDialogMenu(context); implementar depois
                        },
                        alignment: Alignment.centerRight,
                        icon: const Icon(CupertinoIcons.question_circle),
                      ),
                   ],
                  ),

                  const SizedBox(height: 20),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Text(
                              'Para encontrar os valores de uma tabela verdade, devemos'
                                  ' utilizar da semântica dos operadores logicos.'
                                  'As tabelas abaixo mostram como atribuimos os valores-verdade'
                                  ' V ou F para os operadores lógicos (clique nas tabelas).',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )),

                  //
                  //Fim do primeiro Container


                  //Ininicio do segundo Conteiner

                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Semântica da Negação',
                      style: Theme.of(context).textTheme.headline2,

                    ),
                  ),
                  const SizedBox(height: 20),
                  Container( alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Text(
                              'A operação de negação inverte o resultado do valor verdade.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  //
                  //fim do segundo container
                  //

                  //
                  //Aqui vai 1ª tabela
                  //
              const SizedBox(height: 20),
              Table(
                border: TableBorder.all(),
                columnWidths: {
                  0: const FlexColumnWidth(10),
                  1: const FlexColumnWidth(10),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 25,
                        color: Colors.blueGrey,
                        alignment: Alignment.center,
                        child: const Text(
                          'P', //formatar para Texto Grego
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Container(
                          height: 25,
                          color: Colors.blueGrey,
                          alignment: Alignment.center,
                          child: const Text(
                            '~P',
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
                            height: 20,
                            color: Colors.white,
                            alignment: Alignment.center,
                            child: const Text("V"),
                          ),
                      ),
                        TableCell(
                          child: Container(
                          height: 20,
                          color: Colors.white,
                            alignment: Alignment.center,
                            child: const Text('F'),
                          ),
                            
                        ),

                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Container(
                          height: 20,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: const Text("F"),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 20,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: const Text('V',
                              ),
                        ),

                      ),



                    ],
                  ),
                ],),
                  //

                  //Fim da Tabela

                  //Inicio do terceiro container
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Semântica da Conjunção',
                      style: Theme.of(context).textTheme.headline2,

                    ),
                  ),
                  const SizedBox(height: 20),
                  Container( alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Text(
                              'Por ser um "e", a conjunção exige que ambas'
                                  ' as proposições sejam V para que o resultado delas seja V.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  //
                  //Fim do terceiro container


                  //
                  //Inicio da 2º Tabela
                  //
                  const SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'Q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'P^Q',
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
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Fim da Tabela
                  //

                  //Inicio do 4 container
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Semântica da Disjunção',
                      style: Theme.of(context).textTheme.headline2,

                    ),
                  ),
                  const SizedBox(height: 20),
                  Container( alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Text(
                              'Por ser "ou", somente uma das proposições '
                                  'precisa ser V para que o resultado delas seja V.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  //
                  //Fim do quarto container
                  //

                  //
                  //Aqui vai 3º tabela
                  //
                  const SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.redAccent,
                              alignment: Alignment.center,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.redAccent,
                              alignment: Alignment.center,
                              child: const Text(
                                'Q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.redAccent,
                              alignment: Alignment.center,
                              child: const Text(
                                'P v Q',
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
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  //Fim da Tabela

                  //
                  //Inicio do quinto Container
                  //
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Semântica da Condicional',
                      style: Theme.of(context).textTheme.headline2,

                    ),
                  ),
                  const SizedBox(height: 20),
                  Container( alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Text(
                              'O condicional define que, para todo valor '
                                  'verdade V que implicar em F o resultado será F.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),
                  //
                  //Fim do quinto container
                  //

                  //
                  //Aqui vai 4ª tabela
                  //
                  const SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'Q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'P → Q',
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
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Fim da Tabela

                  //Inicio do sexto Container
                  //
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Semântica da Bicondicional',
                      style: Theme.of(context).textTheme.headline2,

                    ),
                  ),
                  const SizedBox(height: 20),
                  Container( alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Text(
                            'O bicondicional define que toda vez que os valores '
                                'verdade das fórmulas forem diferentes, o resultado será F.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),
                  //
                  //Fim do sexto container
                  //

                  //
                  //Aqui vai 5º  tabela
                  //
                  const SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'Q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 25,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'P ↔ Q',
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
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text('F'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('V'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Fim Tabela

                  //Inicio do Container Faça voce mesmo
                  //
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
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
                          'Marque a alternativa que corresponda'
                              ' aos valores verdade representados por “?”.',
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: button(context),
                    onPressed: () {
                     alertSemantica(context);
                    },
                    child: const Text('Finalizar tópico'),
                  ),
                  SizedBox(height: 20),
                  //
                  //Fim do Container faça voce mesmo
                  //


                ],
              ),
            ),
          ),),
    ),
  );
  }
}