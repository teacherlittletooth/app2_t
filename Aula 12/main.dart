import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Map<String, String> paises = {
  "Brasil"    : "https://cdn-icons-png.flaticon.com/128/299/299956.png",
  "Uruguai"   : "https://cdn-icons-png.flaticon.com/128/7343/7343198.png",
};


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
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
        centerTitle: true,
        title: Icon(
          Icons.emoji_people,
          size: 50
        ),
      ),
      body: ListView.builder(
        itemCount: paises.length,
        itemBuilder: (context, item) {
          return ListTile(
            leading: Image(
              image: NetworkImage(
                paises.values.elementAt(item),
              ),
            ),
            title: Text(paises.keys.elementAt(item)),
            //subtitle: Text("Uma frase de efeito"),
            //trailing: FlutterLogo(),
            onLongPress: (){
               final snackBar = SnackBar(
                  content: Text("Vai ${paises.keys.elementAt(item)}!"),
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: (){
                    // código para desfazer a ação!
                    },
                  ),
                );
                // Encontra o Scaffold na árvore de widgets
                // e o usa para exibir o SnackBar!
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        }
      ),
    );
  }
}
