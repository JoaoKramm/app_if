import 'package:flutter/material.dart';

class Editais extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editais"),
        backgroundColor: temaPrincipal,
      ),
      backgroundColor: temaSecundario,
      body: Center(
        child: Text(
          "Editais e documentos importantes.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
