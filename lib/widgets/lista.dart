import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListaState();
  }
}

class _ListaState extends State<Lista> {
  bool checkValue = false;

  @override
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
              Checkbox(
                value: checkValue,
                onChanged: (bool? value) {
                  setState(() {
                    checkValue = value ?? false;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
