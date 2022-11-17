import 'package:flutter/material.dart';
import 'package:login/other_screen.dart';

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
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const MyLogin());
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
  bool _eye = true;

  String emailAccess = "marketpro85@gmail.com";
  String passAccess = "senha1234";

  String _emailFill = "";
  String _passFill = "";

  void _validaLogin(String email, String pass) {
    if(email.isEmpty){
      setState(() {
        _emailFill = "Preencha este campo";
      });
    } else {
      setState(() {
        _emailFill = "";
      });
    }
    if(pass.isEmpty){
      setState(() {
        _passFill = "Preencha este campo";
      });
    } else {
      setState(() {
        _passFill = "";
      });
    }

    if (email.isNotEmpty && pass.isNotEmpty) {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true),
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
                    labelText: "Email",
                    hintText: "Digite seu email",
                    helperText: _emailFill,
                    helperStyle: TextStyle(
                      color: Colors.red
                    )
                  ),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 22),
                  controller: _ctrlEmail),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 30),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Senha",
                      hintText: "Digite sua senha",
                      helperText: _passFill,
                      helperStyle: TextStyle(
                        color: Colors.red
                      ),
                      suffixIcon: IconButton(
                        icon: (_eye)
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _eye = !_eye;
                          });
                        },
                      )),
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 22),
                  obscureText: _eye,
                  controller: _ctrlPass),
            ),
            ElevatedButton(
                onPressed: () {
                  _validaLogin(_ctrlEmail.text, _ctrlPass.text);
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: 150,
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22),
                    )))
          ],
        ),
      ),
    );
  }
}

//////////////// AlertDialog - Ok ////////////////

class MyAlertOk extends StatelessWidget {
  const MyAlertOk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Login realizado com sucesso!"),
      title: Text("App 2 - QI"),
      actions: <Widget>[
        ElevatedButton(
          onPressed: (){
            //Seremos direcionados para outra tela
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyOtherScreen()
              )
            );
          },
          child: Text("Ir para home")
        )
      ],
    );
  }
}

///////////////// AlertDialog - Fail //////////////////

class MyAlertFail extends StatelessWidget {
  const MyAlertFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("App 2 - QI"),
      content: Text("Email ou senha inválidos."),
      actions: <Widget>[
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("Tentar novamente")
        )
      ],
    );
  }
}
