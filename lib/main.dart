import 'package:flutter/material.dart';
import 'package:money_control/home_pag.dart';
import 'package:money_control/telas/litas_e_notas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // definindo para não mostrar o banner de debug
      home:  HomePage(),
    );
  }


}




