import 'package:flutter/material.dart';


class errou extends StatefulWidget {
  @override
  _errou createState() => _errou();
}

class _errou extends State<errou> {

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
    return Scaffold(
    appBar: AppBar(
    title: Text("Voltar"),
    ),
        body: Column(
          children:[
            Image.asset(
              'assets/nops.gif',
              width: 350,
              height: 350,
            )
          ],
        ),
      //),
    );
  }
}