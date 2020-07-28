import 'package:flutter/material.dart';

DataRow dataProdutos({
  @required String produto,
  @required String preco,
  @required int quantidade,
  @required String subTotal,
}) {
  return DataRow(cells: [
    DataCell(Text(produto)),
    DataCell(Text("R\$" + preco)),
    DataCell(Text(quantidade.toString())),
    DataCell(Text("R\$" + subTotal)),
  ]);
}
