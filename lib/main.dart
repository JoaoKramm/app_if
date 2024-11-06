import 'package:app_if/espacoestudante.dart';
import 'package:flutter/material.dart';
import 'destaques.dart';
import 'noticias.dart';
import 'package:app_if/espacoestudante.dart';
import 'package:app_if/noticias.dart';
import 'package:app_if/espacoservidor.dart';
import 'package:app_if/polos.dart';
import 'package:app_if/cursos.dart';
import 'package:app_if/editais.dart';
import 'package:app_if/processos_seletivos.dart';
import 'package:app_if/concursos.dart';
import 'package:app_if/acesso_informacao.dart';



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
                MaterialPageRoute(builder: (context) => EspacoEstudante()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Notícias'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Noticias()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Espaço do Servidor'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EspacoServidor()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_sharp),
            title: Text('Polos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Polos()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_tree_outlined),
            title: Text('Cursos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cursos()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color_outlined),
            title: Text('Editais'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Editais()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Processos Seletivos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProcessosSeletivos()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Concursos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Concursos()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Acesso à Informação'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AcessoInformacao()),
              );
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
