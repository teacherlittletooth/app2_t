import 'package:dados/model/carro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPageReceive extends StatefulWidget {
  Carro car;
  MyPageReceive({required this.car});

  @override
  State<MyPageReceive> createState() => _MyPageReceiveState();
}

class _MyPageReceiveState extends State<MyPageReceive> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.car.toString()),
    );
  }
}
