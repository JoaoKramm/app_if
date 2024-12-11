import 'package:flutter/material.dart';

class Polos extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  // Lista com os nomes dos polos
  final List<String> polos = [
    'Reitoria',
    'Câmpus Pelotas',
    'Câmpus Pelotas-Visconde da Graça',
    'Câmpus Bagé',
    'Câmpus Camaquã',
    'Câmpus Charqueadas',
    'Câmpus Gravataí',
    'Câmpus Avançado Jaguarão',
    'Câmpus Lajeado',
    'Câmpus Novo Hamburgo',
    'Câmpus Passo Fundo',
    'Câmpus Santana do Livramento',
    'Câmpus Sapiranga',
    'Câmpus Sapucaia do Sul',
    'Câmpus Venâncio Aires',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Polos"),
        backgroundColor: temaPrincipal,
      ),
      backgroundColor: temaSecundario,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Número de blocos por linha
            crossAxisSpacing: 10, // Espaçamento horizontal
            mainAxisSpacing: 10, // Espaçamento vertical
            childAspectRatio: 3, // Proporção dos blocos (mais alongados)
          ),
          itemCount: polos.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Exibe um SnackBar ao clicar no bloco
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Você clicou no ${polos[index]}')),
                );
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: temaPrincipal.withOpacity(0.8), // Cor principal com transparência
                  borderRadius: BorderRadius.circular(10), // Bordas arredondadas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Sombra leve
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Text(
                  polos[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
