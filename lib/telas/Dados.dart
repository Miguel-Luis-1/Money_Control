import 'package:flutter/material.dart';
import 'package:money_control/widgets/conta.dart';
import 'package:money_control/main.dart';

class Dados extends StatefulWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  _Dados createState() => _Dados();
}

class _Dados extends State<Dados> {
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

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
