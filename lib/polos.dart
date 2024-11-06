import 'package:flutter/material.dart';

class Polos extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Polos"),
        backgroundColor: temaPrincipal,
      ),
      backgroundColor: temaSecundario,
      body: Center(
        child: Text(
          "Informações sobre os polos do IF SUL.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
