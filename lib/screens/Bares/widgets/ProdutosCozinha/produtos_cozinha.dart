import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/widgets/barra_produtos.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/widgets/barra_saldo.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/widgets/form_cod_barras.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/widgets/form_num_cartao.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/widgets/tabela_botoes.dart';

class ProdutosCozinha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.grey[350],
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              formNumCartao(),
              formCodBarras(),
              barraProdutos(),
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
              ),
              Card(
                child: TextFormField(
                  maxLines: 2,
                  decoration: InputDecoration(
                    hintText: "Obs: Cozinha",
                  ),
                ),
              ),
              BarraSaldo(),
              TabelaBotoes(),
            ],
          ),
        ),
      ),
    );
  }
}
