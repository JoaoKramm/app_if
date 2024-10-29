import 'package:app_if/espacoestudante.dart';
import 'package:flutter/material.dart';
import 'destaques.dart';
import 'noticias.dart';



void main() {
  runApp(MinhaAplicacao());
}

class MinhaAplicacao extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario =
      Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: temaSecundario,
          appBar: BarraSuperior(),
          body: CorpoDaAplicacao(),
          drawer: MenuLateral(context),  // Passando o context corretamente
          bottomNavigationBar: MenuInferior(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: BotaoFlutuante(),
        ),
      ),
    );
  }

  AppBar BarraSuperior() {
    return AppBar(
      title: Text("IF SUL Mobile"),
      backgroundColor: temaPrincipal,
    );
  }

  Widget CorpoDaAplicacao() {
    return Center(
      child: Container(
        child: Image.asset(
          "assets/img/logoif.png", // Caminho para assets
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  // Corrigi o MenuLateral para aceitar BuildContext
  Drawer MenuLateral(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: temaPrincipal,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: temaSecundario,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Espaço do Estudante'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>EspacoEstudante()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Espaço do Servidor'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_sharp),
            title: Text('Polos'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_tree_outlined),
            title: Text('Cursos'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color_outlined),
            title: Text('Editais'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Processos Seletivos'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Concursos'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Acesso a informação'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget MenuInferior() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.domain_verification),
          label: 'Destaques',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'Noticías',
        ),
      ],
    );
  }

  Widget BotaoFlutuante() {
    return FloatingActionButton(
      onPressed: () {
        // Ação do botão flutuante
      },
      tooltip: 'Início',
      child: const Icon(Icons.home),
    );
  }
}
