import 'package:flutter/material.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/widgets/botao.dart';

class TabelaBotoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Botao(
                    texto: "Venda",
                    onPressed: () {},
                    color: Colors.green[600],
                  ),
                  Botao(
                    color: Colors.purple[600],
                    onPressed: () {},
                    texto: "Reter cartão",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Botao(
                    color: Colors.red[600],
                    texto: "Cancelar",
                    onPressed: () {},
                  ),
                  Botao(
                    color: Colors.grey[600],
                    texto: "Estornar venda",
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Botao(
                    texto: "Operações",
                    onPressed: () {},
                    color: Colors.orange[600],
                  ),
                  Botao(
                    texto: "Extrato cartão",
                    onPressed: () {},
                    color: Colors.blue[600],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
