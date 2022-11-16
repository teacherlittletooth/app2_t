import 'package:flutter/material.dart';
import 'package:login/other_screen.dart';

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
      debugShowCheckedModeBanner: false,
      title: "Tela de login",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
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
  bool _eye = true; //Variável de controle para mostrar senha

  //Variáveis que simularão dados do Banco de Dados
  String emailAccess = "marketpro85@gmail.com";
  String passAccess = "1234senha";
  
  //Função para verificar login e senha
  void _validaLogin(String email, String pass) {
    if(email == emailAccess && pass == passAccess) {
      showDialog(
        context: context,
        builder: (context) => MyAlertOk()
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => MyAlertFail()
      );
    }
  }

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
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Digite seu email",
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
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: (_eye) ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        _eye = !_eye;
                      });
                    },
                  ),
                  labelText: "Senha",
                  hintText: "Digite sua senha"
                ),
                style: const TextStyle(
                  fontSize: 24
                ),
                controller: _ctrlPass,
                obscureText: _eye
              ),
            ),
            ElevatedButton(
              onPressed: (){
                _validaLogin(_ctrlEmail.text, _ctrlPass.text);
              },
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

///////////////// Alert Dialog - Ok ////////////////////

class MyAlertOk extends StatelessWidget {
  const MyAlertOk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
            content: Text("Login efetuado com sucesso!"),
            actions: <Widget>[
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyOtherScreen()
                      )
                    );
                },
                child: Text("Beleza")
              ),
            ],
          );
    }
  }

///////////////// Alert Dialog - Fail ////////////////////

  class MyAlertFail extends StatelessWidget {
  const MyAlertFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
            content: Text("Acesso negado!"),
            actions: <Widget>[
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text("Tentar novamente")
              ),
            ],
          );
    }
  }
