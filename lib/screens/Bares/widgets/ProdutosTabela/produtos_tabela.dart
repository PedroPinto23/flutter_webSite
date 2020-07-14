import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosTabela/widgets/tab_bar_produtos.dart';

class ProdutosTabela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Theme.of(context).primaryColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              tabs: [
                Tab(
                  text: ("Bebidas"),
                ),
                Tab(
                  text: ("Salgados"),
                ),
                Tab(
                  text: ("Sorvetes"),
                ),
                Tab(
                  text: ("Doces"),
                ),
                Tab(
                  text: ("Drinks"),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.grey[350],
          body: TabBarView(
            children: [
              TabBarProdutos(),
              TabBarProdutos(),
              TabBarProdutos(),
              TabBarProdutos(),
              TabBarProdutos(),
            ],
          ),
        ),
      ),
    );
  }
}
