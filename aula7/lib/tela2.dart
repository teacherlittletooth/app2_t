import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyScreen2 extends StatefulWidget {
  const MyScreen2({Key? key}) : super(key: key);

  @override
  State<MyScreen2> createState() => _MyScreen2State();
}

class _MyScreen2State extends State<MyScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 2"),
      ),
      body: const Center(
        child: Text("Tela 2"),
      ),
    );
  }
}