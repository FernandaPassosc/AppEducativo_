import 'package:educativo_app/pages/login.dart';
import 'package:educativo_app/pages/signIn.dart';
import 'package:flutter/material.dart';
//import 'pages/guardar/PaginazLogin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //FirebaseFirestore.instance.collection("tarefa").doc("2").set({"titulo": "fazer comida", "descricao": " todos os dias", "concluido": "false", "excluido":"false"});
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: login.tag,
      routes: {
        login.tag: (context) => login(),
        signIn.tag: (context) => signIn(),
      },
    ));
  }
}


