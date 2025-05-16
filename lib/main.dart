import 'package:app_quiz_flutter/questionnaire.dart';
import 'package:app_quiz_flutter/result.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'key': "cor",
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Azul', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'key': "animal",
      'texto': 'Qual é o seu animal favorito ?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Tigre', 'pontuacao': 1},
      ],
    },
    {
      'key': "instrutor",
      'texto': 'Qual é o seu instrutor favorito ?',
      'respostas': [
        {'texto': 'Joaquim', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 5},
        {'texto': 'Leonardo', 'pontuacao': 3},
        {'texto': 'Maria', 'pontuacao': 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  _reset() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    String title =
        temPerguntaSelecionada
            ? _perguntas[_perguntaSelecionada]['texto'].toString()
            : 'Nenhuma pergunta selecionada';
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada
            ? _perguntas[_perguntaSelecionada]['respostas']
                as List<Map<String, Object>>
            : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          title: Text("App Quiz Flutter"),
        ),
        body:
            temPerguntaSelecionada
                ? Questionnaire(title, respostas, _responder)
                : Result(_pontuacaoTotal, _reset),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
