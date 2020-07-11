import 'package:flutter/material.dart';

class Comprovante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            focusColor: Colors.blue,
            hoverColor: Colors.blue,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text("Senha"),
            subtitle: Text("0234213"),
          ),
          ListTile(
            hoverColor: Colors.blue,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text("Cartão"),
            subtitle: Text("1468654115"),
          ),
          ListTile(
            hoverColor: Colors.blue,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text("Data"),
            subtitle: Text("14/08/2020"),
          ),
          ListTile(
            hoverColor: Colors.blue,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text("Hora"),
            subtitle: Text("16:09:58"),
          ),
          ListTile(
            hoverColor: Colors.blue,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text("Empresa"),
            subtitle: Text("PRACA"),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
