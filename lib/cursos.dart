import 'package:flutter/material.dart';

class Cursos extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  // Lista com os cursos e informações básicas
  final List<Map<String, String>> cursos = [
    {'nome': 'Técnico em Informática - Integrado', 'duracao': '4 anos'},
    {'nome': 'Técnico em Controle Ambiental - Integrado', 'duracao': '4 anos'},
    {'nome': 'Técnico em Automação Industrial', 'duracao': '4 anos'},
    {'nome': 'Design Gráfico', 'duracao': '2 anos'},
    {'nome': 'Análise de Sistemas', 'duracao': '3 anos'},
    {'nome': 'Química Industrial', 'duracao': '4 anos'},
    {'nome': 'Eletrotécnica', 'duracao': '3 anos'},
    {'nome': 'Tecnologia em Alimentos', 'duracao': '3 anos'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos"),
        backgroundColor: temaPrincipal,
      ),
      backgroundColor: temaSecundario,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: cursos.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: temaPrincipal.withOpacity(0.9),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                title: Text(
                  cursos[index]['nome']!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Duração: ${cursos[index]['duracao']}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
                onTap: () {
                  // Ação ao clicar no bloco
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Você clicou no curso: ${cursos[index]['nome']}')),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
