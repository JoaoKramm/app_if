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
              // Ação ao clicar na notícia
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Você clicou na notícia ${index + 1}')),
              );
            },
          );
        },
      ),
    );
  }
}
