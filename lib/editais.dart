import 'package:flutter/material.dart';

class Editais extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  final List<String> destaques = [
    "Inscrições abertas para novos cursos!",
    "IF SUL entre os melhores institutos do Brasil.",
    "Processos seletivos simplificados abertos até 20/12.",
  ];

  final List<Map<String, dynamic>> editais = [
    {'polo': 'Reitoria', 'cor': Colors.red},
    {'polo': 'Câmpus Pelotas', 'cor': Colors.blue},
    {'polo': 'Câmpus Pelotas-Visconde da Graça', 'cor': Colors.orange},
    {'polo': 'Câmpus Bagé', 'cor': Colors.purple},
    {'polo': 'Câmpus Camaquã', 'cor': Colors.green},
    {'polo': 'Câmpus Charqueadas', 'cor': Colors.teal},
    {'polo': 'Câmpus Gravataí', 'cor': Colors.yellow[800]},
    {'polo': 'Câmpus Avançado Jaguarão', 'cor': Colors.cyan},
    {'polo': 'Câmpus Lajeado', 'cor': Colors.pink},
    {'polo': 'Câmpus Novo Hamburgo', 'cor': Colors.indigo},
    {'polo': 'Câmpus Passo Fundo', 'cor': Colors.amber},
    {'polo': 'Câmpus Santana do Livramento', 'cor': Colors.deepPurple},
    {'polo': 'Câmpus Sapiranga', 'cor': Colors.lime},
    {'polo': 'Câmpus Sapucaia do Sul', 'cor': Colors.brown},
    {'polo': 'Câmpus Venâncio Aires', 'cor': Colors.grey},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editais"),
        backgroundColor: temaPrincipal,
      ),
      backgroundColor: temaSecundario,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Destaques
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: destaques.map((destaque) {
                  return Card(
                    margin: EdgeInsets.only(bottom: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: temaPrincipal.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        destaque,
                        style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // Lista de Editais por Polo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: editais.map((edital) {
                  return Card(
                    margin: EdgeInsets.only(bottom: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: edital['cor'],
                    child: ListTile(
                      title: Text(
                        'Edital ${edital['polo']}',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Acessando edital de ${edital['polo']}')),
                        );
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            // Bloco de Informações no Final
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: temaPrincipal,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Os editais são atualizados regularmente. Certifique-se de verificar os prazos e requisitos antes de realizar sua inscrição.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
