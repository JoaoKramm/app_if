import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  final List<Map<String, String>> noticias = List.generate(
    10,
        (index) => {
      'titulo': 'Notícia ${index + 1}',
      'subtitulo': 'Aqui está o subtítulo da notícia ${index + 1}.',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notícias'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(noticias[index]['titulo']!),
            subtitle: Text(noticias[index]['subtitulo']!),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Você clicou na notícia ${index + 1}')),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          // Ação do botão flutuante, como navegar para a página inicial
          Navigator.pop(context);
        },
        tooltip: 'Início',
        child: const Icon(Icons.home),
      ),
    );
  }
}
