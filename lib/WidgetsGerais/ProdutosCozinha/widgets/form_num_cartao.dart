import 'package:flutter/material.dart';

Widget formNumCartao({
  TextEditingController numCartaoController,
  TextEditingController precoController,
}) {
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Card(
          child: TextFormField(
            controller: numCartaoController,
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
            controller: precoController,
            decoration: InputDecoration(
              hintText: "R\$0,00",
            ),
          ),
        ),
      ),
    ],
  );
}
