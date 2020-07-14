import 'package:flutter/material.dart';

class Comprovante extends StatelessWidget {
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
                Text("0234213"),
              ],
            ),
            Row(
              children: [
                Text("Cartão: "),
                SizedBox(
                  width: 5,
                ),
                Text("1468654115"),
              ],
            ),
            Row(
              children: [
                Text("Data: "),
                SizedBox(
                  width: 5,
                ),
                Text("14/08/2020"),
              ],
            ),
            Row(
              children: [
                Text("Hora: "),
                SizedBox(
                  width: 5,
                ),
                Text("16:09:58"),
              ],
            ),
            Row(
              children: [
                Text("Empresa: "),
                SizedBox(
                  width: 5,
                ),
                Text("PRACA"),
              ],
            ),
            ListTile(
              focusColor: Colors.blue,
              hoverColor: Colors.blue,
              contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
              title: Text("Consumo"),
              subtitle: Text("Nome Produto"),
              trailing: Text(
                "R\$ 0,00",
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
