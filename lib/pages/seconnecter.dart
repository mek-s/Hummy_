// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:Hummy/palette.dart';
import '../widgets/widgets.dart';

class Seconnecter extends StatefulWidget {
  const Seconnecter({Key? key}) : super(key: key);

  @override
  State<Seconnecter> createState() => _SeconnecterState();
}

class _SeconnecterState extends State<Seconnecter> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 260,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Nom utilisateur',
                                    hintStyle: nada,
                                  ),
                                  style: nada,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    hintStyle: nada,
                                  ),
                                  style: nada,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: 'Mot de passe',
                                    hintStyle: nada,
                                  ),
                                  obscureText: true,
                                  style: nada,
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                'Mot de passe oublié?',
                                style: TextStyle(
                                    fontSize: 12.75,
                                    fontFamily: 'com',
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF58763),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: RaisedButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 30.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  color: Color(0xFFF58763),
                                  child: Text(
                                    "Se connecter",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: 'FredokaOne',
                                    ),
                                  ),
                                  textColor: Colors.white,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/themes');
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
