import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget formCodBarras({
  TextEditingController codBarrasController,
  TextEditingController qtdController,
  TextEditingController valorController,
}) {
  TextStyle style = GoogleFonts.oxygen(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Card(
          child: TextFormField(
            controller: codBarrasController,
            style: style,
            decoration: InputDecoration(
              hintText: "Código,nome ou código de barras",
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Card(
          child: TextFormField(
            controller: qtdController,
            style: style,
            decoration: InputDecoration(
              hintText: "1",
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Card(
          child: TextFormField(
            controller: valorController,
            style: style,
            decoration: InputDecoration(prefixText: "R\$", hintText: "Valor"),
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    ],
  );
}
