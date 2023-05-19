import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lista extends StatelessWidget {  const Lista({Key? key}) : super(key: key);

Widget build(BuildContext context) {

  return Container(


    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.black,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(9),
    ),

    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text('Lista de compras'),
        Text('12/01/2029'),
        

      ],
    ),

  );

}

}