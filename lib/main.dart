import 'package:flutter/material.dart';
import 'package:Hummy/pages/Questions.dart';
import 'package:Hummy/pages/themes.dart';
import 'package:Hummy/pages/dejeuner.dart';
import 'package:Hummy/pages/inscrire.dart';
import 'package:Hummy/pages/petitdejeuner.dart';
import 'package:Hummy/pages/principal.dart';
import 'package:Hummy/pages/seconnecter.dart';
import 'package:Hummy/pages/diner.dart';



void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/petitDejeuner',
      routes: {
        '/': (context) => Principal(), //AKA push inscrire et seconnecter
        '/Inscrire': (context) => Inscrire(),
        '/Seconnecter': (context) => Seconnecter(),
        '/petitDejeuner': (context) => PetitDejeuner(),
        '/Dejeuner': (context) => Dejeuner(),
        '/Diner': (context) => Diner(),
      },

      theme: ThemeData(fontFamily: 'FredokaOne'),
      home:const Themes(),
      debugShowCheckedModeBanner: false,
    );
  }
}

