import 'package:flutter/material.dart';

Widget barraSaldo() {
  return Card(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: ListTile(
            title: Text("Saldo restante"),
            subtitle: Text("R\$0,00"),
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              "Valor Total",
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text(
              "R\$0,00",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ],
    ),
  );
}
