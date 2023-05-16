import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Conta extends StatelessWidget {  const Conta({Key? key}) : super(key: key);

Widget build(BuildContext context) {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.all(16),
    child: Column(

      children: [

        Text('Conta de Luz'),
        Text('12/01/2029')

      ],

    ),
  );
}
}