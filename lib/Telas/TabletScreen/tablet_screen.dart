import 'package:flutter/material.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/produtos_cozinha.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosTabela/produtos_tabela.dart';
import 'package:flutter_website/WidgetsGerais/ResumoVenda/resumo_venda.dart';

class TabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 18, 140, 126),
        body: Container(
            padding: EdgeInsets.only(left: 25, top: 25, right: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            // padding: EdgeInsets.all(38),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProdutosCozinha(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 280,
                    child: ResumoVenda(
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    child: ProdutosTabela(),
                  ),
                ],
              ),
            )));
  }
}
