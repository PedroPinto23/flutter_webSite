import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ResumoVenda/widgets/comprovante.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResumoVenda extends StatelessWidget {
  final Axis scrollDirection;
  ResumoVenda({this.scrollDirection});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: scrollDirection,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: QrImage(
                data: "https://web.whatsapp.com/",
                version: QrVersions.auto,
                size: 240,
              ),
            ),
            Comprovante(
              senha: "000",
              cartao: "1468654115",
              data: "14/08/2020",
              hora: "16:09:58",
              empresa: "PRACA",
              nomeProduto: "Nome Produto",
              valorProduto: "R\$ 0,00",
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Comprovante(
              senha: "001",
              cartao: "1468654115",
              data: "14/08/2020",
              hora: "16:09:58",
              empresa: "PRACA",
              nomeProduto: "Nome Produto",
              valorProduto: "R\$ 0,00",
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Comprovante(
              senha: "002",
              cartao: "1468654115",
              data: "14/08/2020",
              hora: "16:09:58",
              empresa: "PRACA",
              nomeProduto: "Nome Produto",
              valorProduto: "R\$ 0,00",
            ),
          ],
        ),
      ),
    );
  }
}
