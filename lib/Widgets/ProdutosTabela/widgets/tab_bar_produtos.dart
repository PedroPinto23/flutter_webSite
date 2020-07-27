import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/Widgets/ProdutosTabela/widgets/card_produto.dart';

class TabBarProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();
    return Container(
      height: 300,
      child: GridView.count(
        childAspectRatio: 1.0,
        crossAxisCount: 5,
        children: faker.lorem.words(80).map((e) {
          return CardProduto(
            nomeProduto: e,
            preco: e,
          );
        }).toList(),
      ),
    );
  }
}
