import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Conta extends StatelessWidget {  const Conta({Key? key}) : super(key: key);

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

    margin: const EdgeInsets.symmetric(vertical: 4),
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
            
            Text('Conta de Luz'),
            Text(' | '),
            Text('12/01/2029'),
            Text(' | '),

          ],
          

        ),
      ],
    ),
  );

}

}