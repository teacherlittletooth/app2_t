import 'package:api/widgets/mybody.dart';
import 'package:api/widgets/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApi extends StatefulWidget {
  const MyApi({super.key});

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "API",
          style: GoogleFonts.kiteOne(),
        ),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: MyBody(),
    );
  }
}