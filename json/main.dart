import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json/mywebapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyJson()
    );
  }
}

class MyJson extends StatefulWidget {
  const MyJson({Key? key}) : super(key: key);

  @override
  State<MyJson> createState() => _MyJsonState();
}

class _MyJsonState extends State<MyJson> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON"),
        actions: <Widget>[
          
          PopupMenuButton(
            onSelected: ((result) {
              switch(result){
                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebApi()));
                  break;
              }
            }),
            icon: Icon(Icons.forward),
            iconSize: 40,
            itemBuilder: (context) {
              return [
                
                PopupMenuItem(
                  value: 1,
                  child: Text("Outra página"),
                ),
                
                PopupMenuItem(
                  value: 2,
                  child: Text("Mais um item (faz nada)"),
                ),  
              ];
            }
          )
        ],
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/dados.json"),
        builder: (context, snapshot) {
          var content = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemCount: content.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.person_outline),
                title: Text(
                  content[index]["nome"]
                ),
                subtitle: Text(
                  content[index]["idade"] + " anos"
                ),
                trailing: Text(
                  content[index]["email"]
                ),
              );
            },
          );
        },
      ),
    );
  }
}
