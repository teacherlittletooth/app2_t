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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //////////////////////////////////
              Text(
                "Pesquisa de satisfação",
                style: TextStyle(fontSize: 18),
              ),
              /////////////////////////////////
              SizedBox(height: 30),
              /////////////////////////////////
              TextField(
                controller: _superControl,
                decoration: InputDecoration(
                  label: Text("Nome do mercado")
                )
              ),
              /////////////////////////////////
              SizedBox(height: 30),
              /////////////////////////////////
              DropdownButton(
                isExpanded: true,
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
              SizedBox(height: 30),
              ////////////////////////////////
              Text(
                "Forma de pagamento",
                style: TextStyle(fontSize: 18),
              ),
              ////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ////////////////////////////
                  Radio(
                    value: 0,
                    groupValue: _pgto,
                    onChanged: (val) => setState(() {
                       _pgto = 0;
                    })
                  ), Text("Crédito"),
                  ////////////////////////////
                  SizedBox(width: 60),
                  ////////////////////////////
                  Radio(
                    value: 1,
                    groupValue: _pgto,
                    onChanged: (val) => setState(() {
                      _pgto = 1;
                    })
                  ), Text("Débito"),
                  ///////////////////////////
                  SizedBox(width: 60),
                  ////////////////////////////
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
              SizedBox(height: 30),
              ///////////////////////////////////
              Text(
                "O que mais chamou a atenção",
                style: TextStyle(fontSize: 18),
              ),
              //////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///////////////////////////////
                  Checkbox(
                    value: _bom,
                    onChanged: (val) => setState(() {
                      _bom = !_bom;
                    })
                  ), Text("Bom"),
                  ///////////////////////////////
                  SizedBox(width: 60),
                  ///////////////////////////////
                  Checkbox(
                    value: _bonito,
                    onChanged: (val) => setState(() {
                      _bonito = !_bonito;
                    })
                  ), Text("Bonito"),
                  ///////////////////////////////
                  SizedBox(width: 60),
                  ///////////////////////////////
                  Checkbox(
                    value: _barato,
                    onChanged: (val) => setState(() {
                      _barato = !_barato;
                    })
                  ), Text("Barato"),
                ],
              ),
              ///////////////////////////////////
              SizedBox(height: 30),
              ///////////////////////////////////
              SwitchListTile(
                title: Text("Recomenda este mercado?"),
                value: _recomenda,
                onChanged: (value) => setState(() {
                  _recomenda = !_recomenda;
                })
              ),
              ///////////////////////////////////
              SizedBox(height: 30),
              ///////////////////////////////////
              Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.only(top: 15, bottom: 15))
                  ),
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  onPressed: (){},
                  label: Text(
                    "Enviar dados",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white
                    ),
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
