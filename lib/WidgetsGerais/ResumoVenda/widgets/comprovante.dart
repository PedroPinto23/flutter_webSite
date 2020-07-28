import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    TextStyle style = GoogleFonts.oxygen(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
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
                Text("Senha: ", style: style),
                SizedBox(
                  width: 5,
                ),
                Text(senha, style: style),
              ],
            ),
            Row(
              children: [
                Text("Cartão: ", style: style),
                SizedBox(
                  width: 5,
                ),
                Text(cartao, style: style),
              ],
            ),
            Row(
              children: [
                Text("Data: ", style: style),
                SizedBox(
                  width: 5,
                ),
                Text(data, style: style),
              ],
            ),
            Row(
              children: [
                Text("Hora: ", style: style),
                SizedBox(
                  width: 5,
                ),
                Text(hora, style: style),
              ],
            ),
            Row(
              children: [
                Text("Empresa: ", style: style),
                SizedBox(
                  width: 5,
                ),
                Text(empresa, style: style),
              ],
            ),
            ListTile(
              focusColor: Colors.blue,
              hoverColor: Colors.blue,
              contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
              title: Text("Consumo", style: style),
              subtitle: Text(nomeProduto, style: style),
              trailing: Text(
                "R\$" + double.parse(valorProduto).toStringAsFixed(2),
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
