// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final style = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/Principal.png"),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Color(0xFFF58763),
                    child: Text(
                      "S'inscrire",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'FredokaOne',
                      ),
                    ),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/Inscrire');
                    }),
              ),
              FlatButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.white,
                  child: Text(
                    'Se Connecter',
                    style: TextStyle(fontSize: 22.0, fontFamily: 'FredokaOne'),
                  ),
                  textColor: Color(0xFFF58763),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Seconnecter');
                  }),
              SizedBox(height: 35.0),
            ],
          ),
        ),
      ),
    );
  }
}
