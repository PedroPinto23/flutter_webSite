import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/produtos_cozinha.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosTabela/produtos_tabela.dart';
import 'package:flutter_website/screens/Bares/widgets/ResumoVenda/resumo_venda.dart';

class Bares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 15, bottom: 15, left: 8, right: 8),
        child: Row(
          children: [
            Expanded(child: ProdutosCozinha()),
            Expanded(child: ResumoVenda()),
            Expanded(child: ProdutosTabela()),
          ],
        ),
      ),
    );
  }
}
