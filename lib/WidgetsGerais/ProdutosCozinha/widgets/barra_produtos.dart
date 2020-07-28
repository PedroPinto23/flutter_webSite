import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/WidgetsGerais/ProdutosCozinha/widgets/data_produtos.dart';
import 'package:google_fonts/google_fonts.dart';

Widget barraProdutos() {
  TextStyle style = GoogleFonts.oxygen(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  /// DADOS FALSOS PARA TESTE
  Faker faker = Faker();
  return DataTable(
      horizontalMargin: 0,
      columns: [
        DataColumn(
            label: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Produto",
            style: style,
          ),
        )),
        DataColumn(
            label: Container(
          child: Text(
            "Preço",
            style: style,
          ),
        )),
        DataColumn(
            label: Container(
          child: Text(
            "Quantidade",
            style: style,
          ),
        )),
        DataColumn(
            label: Container(
          child: Text(
            "SubTotal",
            style: style,
          ),
        )),
      ],

      /// substituir "faker.lorem.words(3)" pelos seus respectivos dados
      rows: faker.lorem
          .words(3)
          .map((e) => dataProdutos(
                produto: e,
                preco: e.length.toString(),
                quantidade: e.length,
                subTotal: e.length.toString(),
              ))
          .toList());
}
