import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('_perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'], //lista
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'], //lista
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'], //lista
      }
    ];

    //codigo declarativo
    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()['respostas'];

    //código imperativo
    //for (var textoResp in respostas) {
    //  widgets.add(Resposta(textoResp, _responder));
    //}

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]['texto'] as String),
              //fazendo a listagem dos itens na tela,
              ...respostas.map((t) => Resposta(t, _responder)).toList(),
            ])));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
