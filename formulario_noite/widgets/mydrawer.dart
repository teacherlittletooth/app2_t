import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 51, 51, 51),
      child: ListView(
        children: [
          DrawerHeader(
            child: MyDrawerHeader()
          )
        ],
      ),
    );
  }
}


class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Icon(
            Icons.person_2_outlined,
            size: 100,
            color: Colors.grey,
          ),
          Text(
            "Usuário",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18
            ),
          )
      ],
    );
  }
}
