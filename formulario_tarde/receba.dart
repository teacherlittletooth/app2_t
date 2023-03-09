import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:formulario/model/supermercado.dart';

class Receba extends StatelessWidget {
  Supermercado? mercado;

  Receba({super.key, required this.mercado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados recebidos"),
      ),
      body: Center(
        child: Text(
          mercado.toString(),
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}
