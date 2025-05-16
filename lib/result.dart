import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int pontuacao;
  final void Function() reset;

  Result(this.pontuacao, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Fim do Quiz - Parabéns',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            'Sua pontuação: $pontuacao',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'Reiniciar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: reset,
            ),
          ),
        ],
      ),
    );
  }
}
