import 'package:flutter/material.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/widgets/barra_produtos.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/widgets/barra_saldo.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/widgets/form_cod_barras.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/widgets/form_num_cartao.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/widgets/tabela_botoes.dart';

class ProdutosCozinha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController numCartaoController;
    TextEditingController precoController;
    TextEditingController codBarrasController;
    TextEditingController qtdController;
    TextEditingController valorController;
    return Card(
      elevation: 10,
      color: Colors.grey[350],
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              formNumCartao(
                numCartaoController: numCartaoController,
                precoController: precoController,
              ),
              formCodBarras(
                  codBarrasController: codBarrasController,
                  qtdController: qtdController,
                  valorController: valorController),
              Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: barraProdutos()),
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
