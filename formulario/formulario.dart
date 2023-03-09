import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _nomeControl = TextEditingController();
  String? _tipo;
  int _tipoSec = 0;
  bool _magico = false, _fisico = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
                      "POKEDEX",
                      style: TextStyle(fontStyle: FontStyle.italic)
                     ),
        centerTitle: true
      ),

      body: Column(
        children: [
          
          Text(
            "Registro de Pokemón",
            style: TextStyle(fontSize: 20),
          ),

          TextField(
            controller: _nomeControl,
            decoration: InputDecoration(
              label: Text("Nome")
            ),
          ),

          DropdownButton(
            value: _tipo,
            hint: Text("Selecione o tipo"),
            items: [
              DropdownMenuItem(
                child: Text("Terra"),
                value: "Terra",
                onTap: (){
                  _tipo = "Terra";
                }
              ),
              DropdownMenuItem(
                child: Text("Água"),
                value: "Água",
                onTap: (){
                  _tipo = "Água";
                }
              ),
              DropdownMenuItem(
                child: Text("Planta"),
                value: "Planta",
                onTap: (){
                  _tipo = "Planta";
                }
              ),
              DropdownMenuItem(
                child: Text("Fogo"),
                value: "Fogo",
                onTap: (){
                  _tipo = "Fogo";
                }
              ),
              DropdownMenuItem(
                child: Text("Voador"),
                value: "Voador",
                onTap: (){
                  _tipo = "Voador";
                }
              ),
              DropdownMenuItem(
                child: Text("Psíquico"),
                value: "Psíquico",
                onTap: (){
                  _tipo = "Psíquico";
                }
              ),
              DropdownMenuItem(
                child: Text("Pedra"),
                value: "Pedra",
                onTap: (){
                  _tipo = "Pedra";
                }
              ),
              DropdownMenuItem(
                child: Text("Elétrico"),
                value: "Elétrico",
                onTap: (){
                  _tipo = "Elétrico";
                }
              ),
              DropdownMenuItem(
                child: Text("Inseto"),
                value: "Inseto",
                onTap: (){
                  _tipo = "Inseto";
                }
              )
            ],
            onChanged: (obj){
              setState(() {});
            }
          ),

          Row(
            children: [
              Radio(
                value: 0,
                groupValue: _tipoSec,
                onChanged: (val){
                  setState(() {
                    _tipoSec = 0;
                  });
                }
              ),
              Text("Terra"),

              Radio(
                value: 1,
                groupValue: _tipoSec,
                onChanged: (val){
                  setState(() {
                    _tipoSec = 1;
                  });
                }
              ),
              Text("Água"),

              Radio(
                value: 2,
                groupValue: _tipoSec,
                onChanged: (val){
                  setState(() {
                    _tipoSec = 2;
                  });
                }
              ),
              Text("Fogo"),

            ],
          ),

          Text("Ataques:"),

          Checkbox(
            value: _fisico,
            onChanged: (val){
              setState(() {
                _fisico = !_fisico;
              });
            }
          ),
          
          Checkbox(
            value: _magico,
            onChanged: (val){
              setState(() {
                _magico = !_magico;
              });
            }
          ),
        ],
      ),

    );
  }
}
