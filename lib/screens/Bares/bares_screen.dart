import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/produtos_cozinha.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosTabela/produtos_tabela.dart';
import 'package:flutter_website/screens/Bares/widgets/ResumoVenda/resumo_venda.dart';

class Bares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.blue[500],
        //       Colors.yellowAccent,
        //     ],
        //     begin: Alignment.centerLeft,
        //     end: Alignment.centerRight,
        //   ),
        // ),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(flex: 2, child: ProdutosCozinha()),
            Expanded(flex: 1, child: ResumoVenda()),
            Expanded(flex: 2, child: ProdutosTabela()),
          ],
        ),
      ),
    );
  }
}
