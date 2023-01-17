
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/ButtonTheme.dart';
import '../widgets/alertDialogMenu.dart';

class classifiesatis extends StatefulWidget{
  const classifiesatis ({Key? key}) : super(key: key);
  @override
  _classifiesatisState  createState() => _classifiesatisState();

}

class _classifiesatisState extends State<classifiesatis> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Classificação e \nSatisfazibilidade',
              textAlign: TextAlign.left,),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Classificação e \nSatisfazibilidade',
                        style: Theme.of(context).textTheme.headline2
                      ),
                      IconButton(
                        onPressed: () {
                          //showAlertDialogMenu(context); implementar depois
                        },
                        alignment: Alignment.centerRight,
                        icon: const Icon(CupertinoIcons.question_circle),
                      ),
                    ]
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
                              color: Colors.redAccent,
                              blurRadius:1,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('O resultado de uma tabela verdade pode ter uma '
                                  'classificação e uma satisfazibilidade dependendo '
                                  'dos valores verdade encontrados.',
                            textAlign: TextAlign.justify,),
                        ],
                      )
                  ),
                  //Fim do primeiro Container

                  //
                  //Ininicio do segundo Conteiner
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Classificação das \nFórmulas-Bem-Formadas',
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
                            'Tautologia: terá essa classificação quando todos '
                                'os valores-verdade resultantes da tabela verdade '
                                'forem verdadeiros.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  // Fim do Segundo Container
                  //

                  //
                  // Inicío da 1ª tabela


                  //fim da tabela
                  //


                  //
                  // Inicio do 3ª containue
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
                            'Contradição: terá essa classificação quando '
                                'todos os valores-verdade resultantes da '
                                'tabela verdade forem falsos.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  //Fim do 3ª Containeir
                  //

                  //
                  // inicio da 2º tabela

                  // fim da tabela
                  //

                  //
                  // Inicio do 4ª containue
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
                            'Contingência: terá essa classificação quando todos'
                                ' os valores-verdade resultantes da tabela verdade'
                                ' forem verdadeiros e falsos.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  //Fim do 4ª Containeir
                  //

                  //
                  // inicio da 3º tabela

                  // fim da tabela
                  //

                  //
                  // Inicio do 5ª containue
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Satisfazibilidade das \nFórmulas-Bem-Formadas',
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


                          const Text(  // Formatar para colocar item
                            'A satisfazibilidade de uma Fórmula-Bem-Formada (FBF)'
                                ' pode ser duas entre os quatro tipos possíveis\n',
                            textAlign: TextAlign.justify,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: null,
                                alignment: Alignment.centerRight,
                                icon: const Icon(Icons.circle,size: 15,color:Colors.black,),
                              ),
                              const Text('Satisfazível: quando existe pelo \n'
                                  'menos um valor verdade V '
                                  'nos \nvalores resultantes.',textAlign: TextAlign.left,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: null,
                                alignment: Alignment.centerRight,
                                icon: const Icon(Icons.circle,size: 15,color:Colors.black,),
                              ),
                              const Text('Falsificável: quando existe pelo \n'
                                  'menos um valor verdade F nos \n'
                                  'valores resultantes.',textAlign: TextAlign.left,),
                            ],
                          ),

                          const Text(  // Formatar para colocar item
                            '\nA tabela verdade abaixo ilustra a situação'
                                'onde ela é Satisfazível e Falsificável.',
                            textAlign: TextAlign.justify,),
                        ],
                      )
                  ),

                  //Fim do 5ª Containeir
                  //

                  //
                  // inicio da 4º tabela

                  // fim da tabela
                  //


                  //
                  // Inicio do 6ª containue
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: null,
                                alignment: Alignment.centerRight,
                                icon: const Icon(Icons.circle,size: 15,color:Colors.black,),
                              ),
                              const Text('Insatisfazível: quando todos os \nvalores'
                                  ' verdade resultantes são F.',textAlign: TextAlign.left,),
                            ],
                          ),

                          const Text(
                            '\nA tabela verdade abaixo ilustra a situação onde ela é '
                                'Insatisfazível mas também Falsificável.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  //Fim do 6ª Containeir
                  //

                  //
                  // inicio da 5º tabela

                  // fim da tabela
                  //

                  //
                  // Inicio do 7ª containue
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: null,
                                alignment: Alignment.centerRight,
                                icon: const Icon(Icons.circle,size: 15,color:Colors.black,),
                              ),
                              const Text('Válida: quando todos os valores \nverdade resultantes são V.',textAlign: TextAlign.left,),
                            ],
                          ),

                          const Text(
                            'A tabela verdade abaixo ilustra a situação onde '
                                'ela é Válida mas também é Satisfazíve.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                  ),

                  //Fim do 7ª Containeir
                  //

                  //
                  // inicio da 5º tabela

                  // fim da tabela
                  //

                  //
                  // inicio Faça você mesmo
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

                  // fim
                  //



                ],
          ),
        ),
      ),
    ),
    ),
  );
  }
}