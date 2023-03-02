import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage("logotipo.webp"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Nome de usuário",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Senha",
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.remove_red_eye_outlined)
                    )
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
                child: CheckboxListTile(
                  title: Text("Mantenha-me conectado"),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: false,
                  onChanged: (p){}
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.only(right: 100, left: 100, top: 20, bottom: 20))
                  ),
                  onPressed: ()=>print("apertou"),
                  child: Text(
                      "Login",
                      style: TextStyle(fontSize: 26),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
