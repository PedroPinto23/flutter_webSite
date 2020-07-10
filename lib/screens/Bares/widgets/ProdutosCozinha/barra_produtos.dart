import 'package:flutter/material.dart';

Widget barraProdutos() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "Produto",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Preço",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              Text("Qtd",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              Text("SubTotal",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        )
      ],
    ),
  );
}
