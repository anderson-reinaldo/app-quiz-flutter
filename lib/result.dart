import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int pontuacao;
  final void Function() reset;

  Result(this.pontuacao, this.reset);

  String get title {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Vocé foi bom';
    } else if (pontuacao < 16) {
      return 'Vocé foi muito bom';
    }else{
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
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
