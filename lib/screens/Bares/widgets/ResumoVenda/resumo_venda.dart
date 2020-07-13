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
                backgroundColor: Colors.grey[300],
                data: "https://web.whatsapp.com/",
                version: QrVersions.auto,
                size: 240,
              ),
            ),
            Comprovante(),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Comprovante(),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Comprovante(),
          ],
        ),
      ),
    );
  }
}
