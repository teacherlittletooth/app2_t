import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:formulario/model/pokemon.dart';

class Receba extends StatelessWidget {
  Pokemon? pokemon;

  Receba({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(pokemon.toString()),
    );
  }
}
