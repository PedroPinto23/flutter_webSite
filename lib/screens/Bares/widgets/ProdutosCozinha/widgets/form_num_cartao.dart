import 'package:flutter/material.dart';

Widget formNumCartao() {
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Card(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Nº Cartão",
            ),
          ),
        ),
      ),
      Expanded(
        flex: 2,
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
