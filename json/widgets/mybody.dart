import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as Http;
import 'dart:convert';

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  TextEditingController _cep = TextEditingController();
  String _cepRecebido = "";

  void _retornaCep() async {
    try {
      String urlJson = "https://viacep.com.br/ws/"+ _cep.text +"/json/";
      Http.Response response = await Http.get(Uri.parse(urlJson));

      Map site = json.decode(response.body);
    
      String ruaJson = site["logradouro"];
      String cidadeJson = site["localidade"];
      String bairroJson = site["bairro"];
      String ufJson = site["uf"];

      setState(() {
        _cepRecebido = ruaJson + "\n" + cidadeJson + "\n" + bairroJson + "\n" + ufJson;
        print(ruaJson + "\n" + cidadeJson + "\n" + bairroJson + "\n" + ufJson);
      });

    } catch(erro) {
      setState(() {
        _cepRecebido = "Cep não encontrado!";
      });
    }    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 100, right: 100, bottom: 50),
              child: TextField(
                controller: _cep,
                maxLength: 8,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 20
                ),
                decoration: InputDecoration(
                  hintText: "Digite um cep",
                ),
              ),
            ),

            ElevatedButton(
              onPressed: _retornaCep,
              child: Text("BUSCAR CEP")
            ),

            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                _cepRecebido,
                style: GoogleFonts.kiteOne(
                    fontSize: 20,
                  )
                ),
              )
          ],
        ),
      ),
    );
  }
}
