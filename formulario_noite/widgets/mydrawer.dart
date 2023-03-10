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
          ),

          ListTile(
            title: Text(
              "Sobre",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16
              ),
            ),
            trailing: Icon(Icons.business, color: Colors.grey),
            leading: Icon(Icons.arrow_right, color: Colors.grey),
          ),

          Divider(),

          ListTile(
            title: Text(
              "História",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16
              ),
            ),
            trailing: Icon(Icons.book_outlined, color: Colors.grey),
            leading: Icon(Icons.arrow_right, color: Colors.grey),
          ),

          Divider(),

          ListTile(
            title: Text(
              "Produtos",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16
              ),
            ),
            trailing: Icon(Icons.attach_money, color: Colors.grey),
            leading: Icon(Icons.arrow_right, color: Colors.grey),
          ),

          Container(
            height: 200,
            alignment: Alignment.bottomCenter,
            child: Text(
              "by LittleTooth",
              style: TextStyle(color: Colors.white),
            )
          )
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Icon(
            Icons.person_2_outlined,
            size: 100,
            color: Colors.grey
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
