import 'package:flutter/material.dart';

class Comprovante extends StatelessWidget {
  @required
  final String senha;

  @required
  final String cartao;

  @required
  final String data;

  @required
  final String hora;

  @required
  final String empresa;

  @required
  final String valorProduto;

  @required
  final String nomeProduto;
  Comprovante({
    this.senha,
    this.cartao,
    this.data,
    this.hora,
    this.empresa,
    this.valorProduto,
    this.nomeProduto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 240,
        width: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text("Senha: "),
                SizedBox(
                  width: 5,
                ),
                Text(senha),
              ],
            ),
            Row(
              children: [
                Text("Cartão: "),
                SizedBox(
                  width: 5,
                ),
                Text(cartao),
              ],
            ),
            Row(
              children: [
                Text("Data: "),
                SizedBox(
                  width: 5,
                ),
                Text(data),
              ],
            ),
            Row(
              children: [
                Text("Hora: "),
                SizedBox(
                  width: 5,
                ),
                Text(hora),
              ],
            ),
            Row(
              children: [
                Text("Empresa: "),
                SizedBox(
                  width: 5,
                ),
                Text(empresa),
              ],
            ),
            ListTile(
              focusColor: Colors.blue,
              hoverColor: Colors.blue,
              contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
              title: Text("Consumo"),
              subtitle: Text(nomeProduto),
              trailing: Text(
                valorProduto,
                style: TextStyle(
                  color: Colors.green[900],
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
