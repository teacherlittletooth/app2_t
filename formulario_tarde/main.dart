import 'package:flutter/material.dart';
import 'package:formulario/formulario.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supermercado',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyForm(),
    );
  }
}
