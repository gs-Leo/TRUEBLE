import 'package:flutter/material.dart';
import 'package:trueble/widgets/ButtonTheme.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Ordem de Precedência'),
              IconButton(
                onPressed: () {
                  showAlertDialogMenu(context);
                },
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text('Construção da Tabela Verdade',
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.center),
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
                          const Text(
                              'O uso dos parênteses nas fórmulas servem para definir a ordem de '
                              'resolução quando montarmos as tabelas verdade. \n'),
                          const Text(' Exemplo: '
                              'Fórmula: ((p v q) -> (p ^ r)) \n'),
                          const Text(
                              'Separamos as variáveis proposicionais (p, q, r) da fórmula em cada coluna da '
                              'tabela verdade e depois separamos o que está contido nos '
                              'parênteses da fórmula. Assim teremos:'),
                        ],
                      )),

                  const SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                      3: const FlexColumnWidth(20),
                      4: const FlexColumnWidth(20),
                      5: const FlexColumnWidth(35),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'r',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p v q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p ∧ r',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                '(p v q) → (p ∧ r)',
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
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Fim Primeiro Container

                  const SizedBox(height: 20), // Fim da Primeira Tabela

                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Remoção de Parênteses',
                      style: Theme.of(context).textTheme.headline2,
                    ),
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
                          const Text(
                              'Cada par de parênteses deve abrigar somente 1 operador binário e seu '
                              'parênteses externo sempre pode ser removido, pois é uma '
                              'simplificação da fórmula inteira. \n'),
                          const Text(
                              ' Exemplo: Fórmula: (p -> q) Pode ser somente: p -> q \n'),
                          const Text('Para removermos outros parenteses, '
                              'precisamos respeitar a ordem de precedencia dos operadores logicos: '),
                        ],
                      )),

                  const SizedBox(height: 20),

                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(15),
                      2: const FlexColumnWidth(10),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'Ordem',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
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
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
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
                              alignment: Alignment.center,
                              child: const Text('1'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('Negação'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('¬'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('2'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('Condicional'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('→'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('3'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('Bicondicional'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('↔'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('4'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('Disjunção'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('∨'),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('5'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('Conjunção'),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text('∧'),
                            ),
                          ),
                        ],
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
                          const Text('Exemplo 1: \n'
                              'Utilizando a fórmula dada anteriormente, podemos remover todos os '
                              'parênteses? \n'),
                          const Text('((p v q) -> (p ^ r)) \n'),
                          const Text(
                              'Os parênteses mais externos sempre podem ser removidos. Se retirarmos os parênteses da '
                              'conjunção e disjunção, a ordem de resolução não é afetada. \n'),
                          const Text('Simplificação: p v q -> p ^ r \n'),
                          const Text(
                              'Exemplo 2: E se tivermos a seguinte fórmula: \n'),
                          const Text('((p -> q) v r) \n'),
                          const Text(
                              'A ordem de precedência nos diz que a disjunção deve ser resolvida primeiro,'
                              ' mas temos parênteses no condicional. E agora?? \n'),
                          const Text(
                              'Nesse caso respeitaremos o que o parênteses nos diz e em seguida resolvemos o resto. \n'
                              'Por isso, não podemos remover todos os parênteses presentes se não o resultado final é afetado \n '),
                          const Text('Simplificação: (p -> q) v r'),
                        ],
                      )),

                  const SizedBox(height: 20),

                  Container(
                    alignment: Alignment.topCenter,
                    child: Text('Associatividade \n dos Operadores',
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
                          const BoxShadow(
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
                          const Text(
                              'A associatividade dos operadores logicos nos indica por qual lado '
                              'devemos começar se não tivermos parenteses em uma formula e '
                              'houverem operadores logicos iguais nela.'),
                          const Text(
                              'Conjunção e Disjunção: Associativos a esquerda, se tivermos: \n'),
                          const Text('p ^ q ^ r \n '),
                          const Text(
                            'Será o mesmo que dizermos: ((p ^ q) ^ r). E a tabela verdade será assim:',
                          ),
                        ],
                      )),
                  const SizedBox(height: 20),

                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                      3: const FlexColumnWidth(20),
                      4: const FlexColumnWidth(20),
                      5: const FlexColumnWidth(35),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'r',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p ∧ q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                '(p ∧ r) ∧ r',
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
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                        ],
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
                        const Text('Se tivermos: p ∨ q ∨ r \n'),
                         const Text('Será o mesmo que dizermos: ((p ∨ q) ∨ r. A tabela verdade será assim:'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                      3: const FlexColumnWidth(20),
                      4: const FlexColumnWidth(20),
                      5: const FlexColumnWidth(35),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'r',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p ∨ q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                '(p ∨ r) ∨ r',
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
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                        ],
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
                        const Text('Condicional e Bicondicional: Associativos a direita, se tivermos: \n'
                            'p → s → r \n'),

                            const Text ('Será o mesmo que dizermos: (p → (s → r)). '
                                'A tabela verdade será assim:'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                      3: const FlexColumnWidth(20),
                      4: const FlexColumnWidth(20),
                      5: const FlexColumnWidth(35),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                's',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                's → r',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p → (s → r)',
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
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                        ],
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
                        const Text('Se tivermos: p ↔ s ↔ r \n'),

                            const Text('Será o mesmo que dizermos: (p ↔ (s ↔ r)).'
                            ' E a tabela verdade será assim:'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: const FlexColumnWidth(10),
                      1: const FlexColumnWidth(10),
                      2: const FlexColumnWidth(10),
                      3: const FlexColumnWidth(20),
                      4: const FlexColumnWidth(20),
                      5: const FlexColumnWidth(35),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'q',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                's',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                's ↔ r',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                              color: Colors.blueGrey,
                              alignment: Alignment.center,
                              child: const Text(
                                'p ↔ (s ↔ r)',
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
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 32,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                          'Quais fórmulas indicam corretamente a fórmula'
                          'equivalente? Leve em conta a ordem de precedência'
                          'dos operadores',
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: button(context),
                    onPressed: () {
                      alertOrdemPrecedencia(context);
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
