import 'package:flutter/material.dart';

class EspacoServidor extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Espaço do Servidor"),
        backgroundColor: temaPrincipal,
      ),
      backgroundColor: temaSecundario,
      body: Center(
        child: Text(
          "Bem-vindo ao Espaço do Servidor.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
