import 'package:flutter/material.dart';
import 'package:money_control/telas/Criar_Lista.dart';
import 'package:money_control/widgets/conta.dart';
import 'package:money_control/widgets/lista.dart';
import 'package:money_control/telas/Criar_Conta.dart';

class ListaENotas extends StatefulWidget {
  const ListaENotas({Key? key}) : super(key: key);

  @override
  _ListaENotasState createState() => _ListaENotasState();
}

class _ListaENotasState extends State<ListaENotas> {
  int _selectedIndex = 0;
  List<String> listConteudo = [];
  List<String> listConteudoListas = [];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF93D1FA), // Cor de fundo da página
        body: Column(
          children: [
            Flexible(
             
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (String todo in listConteudo)
                        Conta(),
                      for (String todo in listConteudoListas)
                        Lista(),  
                    ],
                  ),
                ),
              ),
           
          ],
        ),
        floatingActionButton: FloatingActionButton( // Botão de adicionar nota/lista
          onPressed: () {
            _mostrarModal(context);
          },
          child: Icon(Icons.edit, color: Colors.white), // ícone branco
          backgroundColor: Colors.green, // Cor do botão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Ajusta as bordas do botão
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }

  void _mostrarModal(BuildContext context) {  // Modal de opções de lista/notas
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                title: Text('Contas'), // label branco
                onTap: () {
                  setState(() {
                    listConteudo.add('');
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CriarConta())
                  );
                },
              ),
              ListTile(
                title: Text('Lista de compras'), // label branco
                onTap: () {
                  setState(() {
                    listConteudoListas.add('');
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CriarLista())
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
