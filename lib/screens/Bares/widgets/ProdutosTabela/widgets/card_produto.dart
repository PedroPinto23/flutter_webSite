import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[500],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 100,
          width: 80,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Nome Produto",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "R\$0,00",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
