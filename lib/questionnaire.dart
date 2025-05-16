import 'package:app_quiz_flutter/question.dart';
import 'package:app_quiz_flutter/response.dart';
import 'package:flutter/material.dart';

class Questionnaire extends StatelessWidget {
  final String title;
  final List<Map<String, Object>> respostas;
  final void Function(int) quandoResponder;

  const Questionnaire(
    this.title,
    this.respostas,
    this.quandoResponder,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questao(title),
        ...respostas.map((resposta) {
          final texto = resposta['texto'].toString();
          final pontuacao = resposta['pontuacao'].toString();
          return Resposta(
            texto, 
            () => quandoResponder(int.parse(pontuacao)),
          );
        }).toList(),
      ],
    );
  }
}