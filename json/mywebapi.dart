import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as Http;
import 'dart:convert';

class MyWebApi extends StatefulWidget {
  const MyWebApi({Key? key}) : super(key: key);

  @override
  State<MyWebApi> createState() => _MyWebApiState();
}

class _MyWebApiState extends State<MyWebApi> {
  TextEditingController _cep = TextEditingController();
  String _cepRecebido = "";

  void _retornaCep() async {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar cep"),
      ),
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
                style: GoogleFonts.actor(
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
