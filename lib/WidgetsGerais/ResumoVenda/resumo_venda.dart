import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/WidgetsGerais/ResumoVenda/widgets/comprovante.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResumoVenda extends StatelessWidget {
  final Axis scrollDirection;
  ResumoVenda({this.scrollDirection});
  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();

    List<String> palavras = faker.lorem.words(8);
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
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: scrollDirection,
                itemCount: palavras.length,
                itemBuilder: (context, index) {
                  return Comprovante(
                      senha: palavras[index],
                      cartao: palavras[index].length.toString(),
                      data: "14/08/2020",
                      hora: "16:09:58",
                      empresa: palavras[index],
                      nomeProduto: palavras[index],
                      valorProduto: palavras[index].length.toString());
                })
          ],
        ),
      ),
    );
  }
}
