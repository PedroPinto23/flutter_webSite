import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final Color color;
  final Function onPressed;
  final String texto;
  Botao({
    @required this.color,
    @required this.onPressed,
    @required this.texto,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: Colors.black38,
      color: color,
      onPressed: () {},
      child: Text(
        "Estornar venda",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
