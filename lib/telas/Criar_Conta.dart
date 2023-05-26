import 'package:flutter/material.dart';
import 'package:money_control/widgets/conta.dart';
import 'package:money_control/main.dart';

class CriarConta extends StatefulWidget {
  const CriarConta({Key? key}) : super(key: key);

  @override
  _CriarContaState createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  int _selectedIndex = 0;
  List<String> listConteudo = [];

  TextEditingController dinheiroController = TextEditingController();
  TextEditingController dataController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Implemente a ação para ir para a tela correspondente ao item selecionado
    });
  }

  @override
  void dispose() {
    dinheiroController.dispose();
    dataController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF93D1FA), // Cor de fundo da página
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 55), // Define a distância desejada do topo
            child: ListView(
              children: [
                for (String todo in listConteudo)
                  ListTile(
                    title: Text(todo),
                  ),
                Center(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome da Conta',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: TextField(
                    controller: dinheiroController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Valor da Conta',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child:
                      SizedBox(height: 5), // Adiciona um espaço de 20 de altura
                ),
                Center(
                  child: TextField(
                    controller: dataController,
                    decoration: InputDecoration(
                      labelText: 'Data de Pagamento',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      ).then((selectedDate) {
                        if (selectedDate != null) {
                          dataController.text = selectedDate.toString();
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    height: 100,
                    child: TextField(
                      maxLines: 20,
                      decoration: InputDecoration(
                        labelText: 'Descrição ou notas sobre a conta...',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 180),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Implemente a lógica para salvar os dados
                      },
                      child: Text('Cancelar'),
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implemente a lógica para cancelar a operação
                      },
                      child: Text('Salvar'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .green, // Define a cor vermelha para o botão Cancelar
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
