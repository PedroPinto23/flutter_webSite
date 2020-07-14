import 'package:flutter/material.dart';

class TabelaBotoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                    color: Colors.green[600],
                    onPressed: () {},
                    child: Text(
                      "Venda",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    color: Colors.purple[600],
                    onPressed: () {},
                    child: Text(
                      "Reter cartão",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                    color: Colors.red[600],
                    onPressed: () {},
                    child: Text(
                      "Cancelar",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    color: Colors.grey[600],
                    onPressed: () {},
                    child: Text(
                      "Estornar venda",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                    color: Colors.orange[600],
                    onPressed: () {},
                    child: Text(
                      "Operações",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    color: Colors.blue[600],
                    onPressed: () {},
                    child: Text(
                      "Extrato cartão",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
