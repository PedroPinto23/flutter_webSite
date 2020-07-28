import 'package:flutter/material.dart';

DataRow dataProdutos({
  @required String produto,
  @required String preco,
  @required int quantidade,
  @required String subTotal,
}) {
  return DataRow(cells: [
    DataCell(Text(produto)),
    DataCell(Text("R\$" + double.parse(preco).toStringAsFixed(2))),
    DataCell(Text(quantidade.toString())),
    DataCell(Text("R\$" + double.parse(subTotal).toStringAsFixed(2))),
  ]);
}
