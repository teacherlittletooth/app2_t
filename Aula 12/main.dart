import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Map<String, String> paises = {
  "Brasil":"https://cdn-icons-png.flaticon.com/128/299/299956.png",
  "Argentina":"https://img.olx.com.br/thumbs256x256/98/987241347014813.jpg",
  "Equador":"https://cdn-icons-png.flaticon.com/128/300/300107.png"
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyListView()
    );
  }
}


class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.baby_changing_station_rounded,
          size: 50,
        ),
        centerTitle: true
      ),
      body: ListView.builder(
        itemCount: paises.length, //Pegando o tamanho da lista
        itemBuilder: (context, itens){
          return ListTile(
            leading: Image(
              image: NetworkImage(paises.values.elementAt(itens))
            ),
            title: Text(paises.keys.elementAt(itens)),
            trailing: FlutterLogo(),
            onTap: (){
              print("Clicou no item $itens");
            },
            onLongPress: (){
              print("Segurou por mais tempo o item $itens");
            }
          );
        }
      ),
    );
  }
}
