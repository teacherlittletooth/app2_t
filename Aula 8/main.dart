import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
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
              width: 200,
              child: Image.asset("lib/img/logo.png"),
            ),
            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email"
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 22
                ),
                controller: _ctrlEmail
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Senha",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: (){
                      print("Mudou...");
                    },
                  )
                ),
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontSize: 22
                ),
                obscureText: true,
                controller: _ctrlPass
              ),
            ),
            ElevatedButton(
              onPressed: (){
                print(
                  "Email: ${_ctrlEmail.text}\n"+
                  "Senha: ${_ctrlPass.text}"
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                width: 150,
                child: Text(
                  "Login", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22
                  ),
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
