import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:formulario/model/seguro.dart';

class Receba extends StatelessWidget {
  Seguro? seg;
  
  Receba({super.key, required this.seg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados recebidos"),
      ),
      body: Center(
        child: Text(
          seg.toString(),
          style: TextStyle(
            fontSize: 22
          ),
        ),
      ),
    );
  }
}
