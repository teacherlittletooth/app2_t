import 'package:dados/model/carro.dart';
import 'package:dados/mypagereceive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const List<String> listMarca = <String>[
  'Selecione uma marca',
  'Chevrolet',
  'Volkswagen',
  'Fiat',
  'Renault',
  'Peugeot'
];

String marcaEscolhida = listMarca.first;

const List<String> listModelo = <String>[
  'Selecione um modelo',
  'Corsa',
  'Gol',
  'Uno',
  'Sandero',
  '307'
];

String modeloEscolhido = listModelo.first;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 50, right: 50, top: 50),
        child: Column(
          children: <Widget>[
            DropDownMarca(),
            DropDownModelo(),
            Container(
              child: ElevatedButton(
                child: Text("Enviar dados"),
                onPressed: (){
                  Carro carObject = Carro(marca: marcaEscolhida, modelo: modeloEscolhido);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder)=>MyPageReceive(car: carObject)
                    )
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

 
class DropDownMarca extends StatefulWidget {
  const DropDownMarca({super.key});

  @override
  State<DropDownMarca> createState() => _DropDownMarcaState();
}

class _DropDownMarcaState extends State<DropDownMarca> {

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: marcaEscolhida,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? marca) {
        // This is called when the user selects an item.
        setState(() {
          marcaEscolhida = marca!;
          print(marcaEscolhida);
        });
      },
      items: listMarca.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class DropDownModelo extends StatefulWidget {
  const DropDownModelo({super.key});

  @override
  State<DropDownModelo> createState() => _DropDownModeloState();
}

class _DropDownModeloState extends State<DropDownModelo> {

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: modeloEscolhido,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? modelo) {
        // This is called when the user selects an item.
        setState(() {
          modeloEscolhido = modelo!;
        });
      },
      items: listModelo.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
