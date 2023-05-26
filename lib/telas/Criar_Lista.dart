import 'package:flutter/material.dart';
import 'package:money_control/widgets/conta.dart';
import 'package:money_control/main.dart';

class CriarLista extends StatefulWidget {
  const CriarLista({Key? key}) : super(key: key);

  @override
  _CriarLista createState() => _CriarLista();
}

class _CriarLista extends State<CriarLista> {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Color(0xFF93D1FA),
          shadowColor: Color(0xFF93D1FA),
        ),
      ),
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
    );
  }
}
