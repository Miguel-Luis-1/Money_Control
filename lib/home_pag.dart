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

  setPaginaAtula(pagina) { 
// Metodo para que quando a pagina atuao for alterada ela posa mudat o currentIndex 
    setState(() {
      
      paginaAtual = pagina;

    });

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

      onPageChanged: setPaginaAtula,

      ),
      bottomNavigationBar: BottomNavigationBar( // Barra de navegação
        currentIndex: paginaAtual,
        items: [ // Itens da barra de navegação

          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Contas e Listas'),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: 'Dados Financeiros'),
        ],
        

      onTap: (pagina) {

        pagController.animateToPage(pagina, 
          duration: Duration(microseconds: 400), // Tempo ao passar a pagina
          curve: Curves.ease // Animação ao passar a pagina 
          );

      },

      ),
    );
  }
}
