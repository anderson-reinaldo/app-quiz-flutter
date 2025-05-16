import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() action;

  Resposta(this.texto, this.action);

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: action,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
