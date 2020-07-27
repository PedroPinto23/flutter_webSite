import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  final String nomeProduto;
  final String preco;
  CardProduto({this.nomeProduto, this.preco});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 100,
        width: 80,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              nomeProduto,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.teal[500]),
            ),
            Text(
              preco,
              style: TextStyle(color: Colors.teal[500]),
            ),
          ],
        ),
      ),
    );
  }
}
