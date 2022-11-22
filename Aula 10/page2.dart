import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPage2 extends StatefulWidget {
  const MyPage2({Key? key}) : super(key: key);

  @override
  State<MyPage2> createState() => _MyPage2State();
}

class _MyPage2State extends State<MyPage2> {

  int _options = 0;
  bool _music = false, _movie = false, _sport = false, _cook = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "NOME"
                ),
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: RadioListTile(
                secondary: Icon(Icons.person),
                title: Text("Menor de 18"),
                value: 1,
                groupValue: _options,
                onChanged: (param){
                  setState(() {
                    _options = 1;
                  });
                }
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: RadioListTile(
                secondary: Icon(Icons.person),
                title: Text("18 até 40"),
                value: 2,
                groupValue: _options,
                onChanged: (param){
                  setState(() {
                    _options = 2;
                  });
                }
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: RadioListTile(
                secondary: Icon(Icons.person),
                title: Text("Mais de 40"),
                value: 3,
                groupValue: _options,
                onChanged: (param){
                  setState(() {
                    _options = 3;
                  });
                }
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: CheckboxListTile(
                title: Text("Música"),
                secondary: Icon(Icons.music_note),
                controlAffinity: ListTileControlAffinity.leading,
                value: _music,
                onChanged: (param){
                  setState(() {
                    _music = !_music;
                  });
                }
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: CheckboxListTile(
                title: Text("Filmes"),
                secondary: Icon(Icons.movie),
                controlAffinity: ListTileControlAffinity.leading,
                value: _movie,
                onChanged: (param){
                  setState(() {
                    _movie = !_movie;
                  });
                }
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: CheckboxListTile(
                title: Text("Esportes"),
                secondary: Icon(Icons.sports_soccer),
                controlAffinity: ListTileControlAffinity.leading,
                value: _sport,
                onChanged: (param){
                  setState(() {
                    _sport = !_sport;
                  });
                }
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: CheckboxListTile(
                title: Text("Culinária"),
                secondary: Icon(Icons.cookie),
                controlAffinity: ListTileControlAffinity.leading,
                value: _cook,
                onChanged: (param){
                  setState(() {
                    _cook = !_cook;
                  });
                }
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
