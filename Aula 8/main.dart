import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tela de login",
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: const MyLogin()
    );
  }
}


class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              child: Image.asset("lib/img/logo.gif")
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email"
                ),
                style: const TextStyle(
                  fontSize: 24
                ),
                controller: _ctrlEmail
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Senha"
                ),
                style: const TextStyle(
                  fontSize: 24
                ),
                controller: _ctrlPass,
                obscureText: true
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 200,
                child: const Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
