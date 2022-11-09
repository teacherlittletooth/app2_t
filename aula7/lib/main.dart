import 'package:aula7/tela2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula 7",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: const MyScaffoldTela1()
    );
  }
}

////////////////////////////////////////////////////

class MyScaffoldTela1 extends StatefulWidget {
  const MyScaffoldTela1({Key? key}) : super(key: key);

  @override
  State<MyScaffoldTela1> createState() => _MyScaffoldTela1State();
}

class _MyScaffoldTela1State extends State<MyScaffoldTela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 7"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(30))
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyScreen2()));
              },
              child: const Text(
                "Ir para outra página",
                style: TextStyle(
                  fontSize: 30
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}