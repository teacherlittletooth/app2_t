import 'dart:math';
import 'package:exemplo2/tela.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyScreen());
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exemplo"),
          actions: const <Widget>[
            
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Image(
                image: NetworkImage("https://media1.giphy.com/media/dsWYaXwFFLM7Eqf7JI/giphy.gif?cid=6c09b952296305142aa53a3ca6c56d07e28a7b9088384e21&rid=giphy.gif&ct=s"),
                width: 200,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 20)
              ),
              MyBtn()
            ],
          )
        ),
      ),
    );
  }
}

class MyBtn extends StatefulWidget {
  const MyBtn({super.key});

  @override
  State<MyBtn> createState() => _MyBtnState();
}

class _MyBtnState extends State<MyBtn> {
  List<String> frases = [
    "Você é inteligente",
    "Você é lindo",
    "Você é cheiroso",
    "Quer casar comigo?",
    "Te amo!",
    "Dolly, dolly guaraná..."
  ];

  int aleatorio() {
    var aleatorio = Random().nextInt(6);
    return aleatorio;
  }

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
      ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text(frases[aleatorio()]),
                    action: SnackBarAction(
                      label: "Ok",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tela()));
                      },
                    ),
                  );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text("Mostrar SnackBar")
        ),
      ]
    );
  }
}
