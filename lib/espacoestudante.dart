import 'package:flutter/material.dart';
import 'destaques.dart';
import 'noticias.dart';

class EspacoEstudante extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario =
      Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Espaço do Estudante"),
        backgroundColor: temaPrincipal,
      ),
      backgroundColor: temaSecundario,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bem-vindo ao Espaço do Estudante",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: temaPrincipal,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Aqui você pode acessar informações sobre seu curso, notas, "
                  "calendário acadêmico, e muito mais.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Funcionalidades disponíveis:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: temaPrincipal,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Notas e Desempenho"),
              onTap: () {
                // Navegação ou ação
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Calendário Acadêmico"),
              onTap: () {
                // Navegação ou ação
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Biblioteca Virtual"),
              onTap: () {
                // Navegação ou ação
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: MenuInferior(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotaoFlutuante(context),
    );
  }

  Widget MenuInferior(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.domain_verification),
          label: 'Destaques',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'Notícias',
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Destaques()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Noticias()),
          );
        }
      },
    );
  }

  Widget BotaoFlutuante(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.popUntil(context, (route) => route.isFirst);
      },
      tooltip: 'Início',
      child: const Icon(Icons.home),
    );
  }
}
