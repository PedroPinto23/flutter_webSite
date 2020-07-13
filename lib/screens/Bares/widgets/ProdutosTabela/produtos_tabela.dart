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
            bottom: TabBar(
              labelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
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
