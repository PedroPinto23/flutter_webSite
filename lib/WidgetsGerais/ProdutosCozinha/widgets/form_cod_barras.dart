import 'package:flutter/material.dart';

Widget formCodBarras() {
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Card(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Código,nome ou código de barras",
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Card(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "1",
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Card(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "R\$0,00",
            ),
          ),
        ),
      ),
    ],
  );
}
