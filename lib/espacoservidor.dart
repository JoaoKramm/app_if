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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bem-vindo ao Espaço do Servidor!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Aqui você encontra todas as ferramentas e informações necessárias para facilitar sua rotina como servidor público.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Divider(),
            // Sessão: Ferramentas
            Text(
              "🔧 Ferramentas",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.event, color: temaPrincipal),
              title: Text("Calendário de Atividades"),
              subtitle: Text("Consulte eventos e datas importantes."),
              onTap: () {
                // Navegar para página do calendário (se implementado)
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_file, color: temaPrincipal),
              title: Text("Documentos e Arquivos"),
              subtitle: Text("Acesse documentos úteis e regulamentos."),
              onTap: () {
                // Navegar para página de documentos (se implementado)
              },
            ),
            ListTile(
              leading: Icon(Icons.people, color: temaPrincipal),
              title: Text("Contatos Importantes"),
              subtitle: Text("Veja os contatos dos setores administrativos."),
              onTap: () {
                // Navegar para página de contatos (se implementado)
              },
            ),
            SizedBox(height: 24),
            Divider(),
            // Sessão: Informações
            Text(
              "📌 Informações Gerais",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Card(
              color: temaPrincipal.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "⚠️ Aviso: Mantenha seus dados atualizados no sistema para garantir o recebimento de comunicados e benefícios.",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: temaPrincipal.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "📅 Horário de Atendimento: Segunda a Sexta, das 8h às 18h.",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 24),
            Divider(),
            // Sessão: Links Úteis
            Text(
              "🔗 Links Úteis",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.link, color: temaPrincipal),
              title: Text("Portal do Servidor"),
              subtitle: Text("Acesse o portal oficial."),
              onTap: () {
                // Navegar para o link (usar url_launcher se necessário)
              },
            ),
            ListTile(
              leading: Icon(Icons.school, color: temaPrincipal),
              title: Text("Capacitações e Cursos"),
              subtitle: Text("Explore oportunidades de capacitação."),
              onTap: () {
                // Navegar para cursos ou link externo
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Define "Espaço do Servidor" como selecionado
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context); // Retorna para a página anterior
          }
        },
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // Retorna para a página inicial
        },
        tooltip: 'Início',
        child: const Icon(Icons.home),
      ),
    );
  }
}
