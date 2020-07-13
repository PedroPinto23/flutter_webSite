import 'package:flutter/material.dart';

class BarraSaldo extends StatefulWidget {
  @override
  _BarraSaldoState createState() => _BarraSaldoState();
}

class _BarraSaldoState extends State<BarraSaldo> {
  bool getCupom = false;
  bool getVia = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListTile(
                  title: Text("Saldo restante"),
                  subtitle: Text(
                    "R\$0,00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    "Valor Total",
                    style: TextStyle(color: Colors.red),
                  ),
                  subtitle: Text(
                    "R\$0,00",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Imprimir Cupom"),
                          Checkbox(
                            onChanged: (bool value) {
                              setState(() {
                                getCupom = value;
                              });
                            },
                            value: getCupom,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("2 vias"),
                          Checkbox(
                              onChanged: (bool value) {
                                setState(() {
                                  getVia = value;
                                });
                              },
                              value: getVia),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
