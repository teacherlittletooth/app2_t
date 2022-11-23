import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda tela"),
      ),
      body: const MyEye()
    );
  }
}


class MyEye extends StatefulWidget {
  const MyEye({super.key});

  @override
  State<MyEye> createState() => _MyEyeState();
}

class _MyEyeState extends State<MyEye> {
  
bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
     _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          IconButton (
            icon: Icon((_passwordVisible) ?  Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          )
        ],
      )
    );
  }
}
