import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/barra_produtos.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/barra_saldo.dart';

class ProdutosCozinha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
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
          ),
          Card(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Código,nome ou código de barras",
              ),
            ),
          ),
          barraProdutos(),
          Container(
            height: 200,
          ),
          Card(
            child: TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: "Obs: Cozinha",
              ),
            ),
          ),
          barraSaldo(),
        ],
      ),
    );
  }
}
