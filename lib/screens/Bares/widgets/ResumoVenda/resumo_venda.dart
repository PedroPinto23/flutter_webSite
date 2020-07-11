import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ResumoVenda/widgets/comprovante.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResumoVenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(width: 2.0, color: Color(0xFFFF000000)),
                left: BorderSide(width: 2.0, color: Color(0xFFFF000000)),
                right: BorderSide(width: 2.0, color: Color(0xFFFF000000)),
                bottom: BorderSide(width: 2.0, color: Color(0xFFFF000000)),
              )),
              child: QrImage(
                backgroundColor: Colors.grey[300],
                data: "Teste QR Code",
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
