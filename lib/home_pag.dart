import 'package:flutter/material.dart';
import 'package:money_control/telas/Dados.dart';
import 'package:money_control/telas/litas_e_notas.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int paginaAtual = 0; // indice da pagina
  late PageController pagController; // faz o controle dos slides

  @override
  void initState() { // Inicializqa o pagController
    super.initState();
    pagController = PageController(initialPage: paginaAtual); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pagController,
        children: [
          ListaENotas(),
          Dados(),
        ],
      ),
    );
  }
}
