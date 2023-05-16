import 'package:flutter/material.dart';
import 'package:money_control/widgets/conta.dart';

class ListaENotas extends StatefulWidget {
  const ListaENotas({Key? key}) : super(key: key);

  @override
  _ListaENotasState createState() => _ListaENotasState();
}

class _ListaENotasState extends State<ListaENotas> {
  int _selectedIndex = 0;
  List<String> listConteudo = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Implemente a ação para ir para a tela correspondente ao item selecionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF93D1FA), // Cor de fundo da página
      body: Column(
        children: [
          Flexible(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    for (String todo in listConteudo)
                      ListTile(
                        title: Text(todo),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar( // Barra de navegação
        backgroundColor: Color(0xFF0C2A3D),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp, color: Colors.white, size: 40, ), // ícone branco
            label: 'Contas/Listas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on, color: Colors.white, size: 40,),
            label: 'Dados Financeiros',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }

}
