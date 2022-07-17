import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  final perguntas = [
    'Qual é sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(children: <Widget>[
              Text(perguntas[0]),
              ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text('Resposta 2'),
                onPressed: () {
                  print('Resposta 2 foi selecionada!');
                },
              ),
              ElevatedButton(
                child: Text('Resposta 3'),
                onPressed: () => print('Resposta 3!!!'),
              )
            ])));
  }
}
