import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWebApi extends StatefulWidget {
  const MyWebApi({Key? key}) : super(key: key);

  @override
  State<MyWebApi> createState() => _MyWebApiState();
}

class _MyWebApiState extends State<MyWebApi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            //controller: _cep,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Digite um cep"
            ),
          )
        ],
      ),
    );
  }
}
