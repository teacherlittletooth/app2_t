import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _superControl = TextEditingController();
  String? _diaDaSemana;
  int _pgto = 0;
  bool _bom = false, _bonito = false, _barato = false, _recomenda = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////////
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "PESQUISA",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white
          )
          )
      ),
      //////////////////////////////////////
      body: Column(
        children: [
          //////////////////////////////////
          Text(
            "Pesquisa de satisfação",
            style: TextStyle(fontSize: 18),
          ),
          /////////////////////////////////
          TextField(
            controller: _superControl,
            decoration: InputDecoration(
              label: Text("Nome do mercado")
            )
          ),
          /////////////////////////////////
          DropdownButton(
            value: _diaDaSemana,
            hint: Text("Selecione o dia da semana"),
            items: [
              DropdownMenuItem(
                value: "Domingo",
                onTap: () => _diaDaSemana = "Domingo",
                child: Text("Domingo"),
              ),
              DropdownMenuItem(
                value: "Segunda",
                onTap: () => _diaDaSemana = "Segunda",
                child: Text("Segunda"),
              ),
              DropdownMenuItem(
                value: "Terça",
                onTap: () => _diaDaSemana = "Terça",
                child: Text("Terça"),
              ),
              DropdownMenuItem(
                value: "Quarta",
                onTap: () => _diaDaSemana = "Quarta",
                child: Text("Quarta"),
              ),
              DropdownMenuItem(
                value: "Quinta",
                onTap: () => _diaDaSemana = "Quinta",
                child: Text("Quinta"),
              ),
              DropdownMenuItem(
                value: "Sexta",
                onTap: () => _diaDaSemana = "Sexta",
                child: Text("Sexta"),
              ),
              DropdownMenuItem(
                value: "Sábado",
                onTap: () => _diaDaSemana = "Sábado",
                child: Text("Sábado"),
              )
            ],
            onChanged: (obj) => setState(() {})
          ),
          ////////////////////////////////
          Text(
            "Forma de pagamento",
            style: TextStyle(fontSize: 18),
          ),
          ////////////////////////////////
          Row(
            children: [
              Radio(
                value: 0,
                groupValue: _pgto,
                onChanged: (val) => setState(() {
                   _pgto = 0;
                })
              ), Text("Crédito"),
              Radio(
                value: 1,
                groupValue: _pgto,
                onChanged: (val) => setState(() {
                  _pgto = 1;
                })
              ), Text("Débito"),
              Radio(
                value: 2,
                groupValue: _pgto,
                onChanged: (val) => setState(() {
                  _pgto = 2;
                })
              ), Text("Dinheiro")
            ]
          ),
          ///////////////////////////////////
          Text(
            "O que mais chamou a atenção",
            style: TextStyle(fontSize: 18),
          ),
          //////////////////////////////////
          Row(
            children: [
              Checkbox(
                value: _bom,
                onChanged: (val) => setState(() {
                  _bom = !_bom;
                })
              ), Text("Bom"),

              Checkbox(
                value: _bonito,
                onChanged: (val) => setState(() {
                  _bonito = !_bonito;
                })
              ), Text("Bonito"),

              Checkbox(
                value: _barato,
                onChanged: (val) => setState(() {
                  _barato = !_barato;
                })
              ), Text("Barato"),
            ],
          ),
          ///////////////////////////////////
          Text("Recomenda este mercado?"),
          Switch(
            value: _recomenda,
            onChanged: (value) => setState(() {
              _recomenda = !_recomenda;
            })
          ),
          ///////////////////////////////////
          ElevatedButton(
            onPressed: (){},
            child: Text("Enviar dados")
          )
        ],
      ),
    );
  }
}
