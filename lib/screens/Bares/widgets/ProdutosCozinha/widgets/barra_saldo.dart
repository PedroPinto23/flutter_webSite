import 'package:flutter/material.dart';

Widget barraSaldo() {
  return Card(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: ListTile(
            title: Text("Saldo restante"),
            subtitle: Text(
              "R\$0,00",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Imprimir Cupom"),
                    Checkbox(
                      onChanged: (bool value) {},
                      value: true,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("2 vias"),
                    Checkbox(
                      onChanged: (bool value) {},
                      value: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
