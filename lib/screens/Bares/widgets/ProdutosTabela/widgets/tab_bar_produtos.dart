import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosTabela/widgets/card_produto.dart';

class TabBarProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
            ],
          ),
          Row(
            children: [
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
            ],
          ),
          Row(
            children: [
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
            ],
          ),
          Row(
            children: [
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
            ],
          ),
          Row(
            children: [
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
              Expanded(child: CardProduto()),
            ],
          ),
        ],
      ),
    );
  }
}
