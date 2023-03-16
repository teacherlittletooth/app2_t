import 'package:api/widgets/myalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () => showDialog(
            context: context,
            builder: ((context) => MyAlert())
          ),
          leading: Icon(Icons.arrow_forward),
          title: Text(
            "Abrir caixa de alerta",
            style: GoogleFonts.kiteOne(
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}
