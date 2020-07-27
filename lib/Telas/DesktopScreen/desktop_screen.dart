import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/produtos_cozinha.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosTabela/produtos_tabela.dart';
import 'package:flutter_website/screens/Bares/widgets/ResumoVenda/resumo_venda.dart';

class DesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 18, 140, 126),
        body: Container(
            color: Colors.transparent,
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(45))),
            child: Row(
              children: [
                Expanded(flex: 2, child: ProdutosCozinha()),
                Expanded(
                    flex: 1,
                    child: ResumoVenda(
                      scrollDirection: Axis.vertical,
                    )),
                Expanded(flex: 2, child: ProdutosTabela()),
              ],
            )));
  }
}
