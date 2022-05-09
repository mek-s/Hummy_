

import 'package:flutter/material.dart';

import 'package:Hummy/pages/themes.dart';


class Bienvenue extends StatefulWidget {
  const Bienvenue({Key? key}) : super(key: key);

  @override
  State<Bienvenue> createState() => _BienvenueState();
}

class _BienvenueState extends State<Bienvenue> {

  String nom='Salim';//to change and link it to auth
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(


        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img_21.png"),
              fit: BoxFit.cover),
        ),
        child:
        Center
          (
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 150),
                    Title(color: Colors.blueAccent, child: const Text(
                      "Bienvenue",style:  TextStyle(fontFamily: 'FredokaOne',fontSize: 34, color:  Color(
                        0xff010158),),)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 200),
                    Title(color: Colors.white, child: Text(
                      nom+'!',style: const TextStyle(fontFamily: 'FredokaOne',fontSize: 35,color: Color(
                        0xffffffff))),)
                  ],
                ),
                Center(
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //const SizedBox(height: 200),
                      const SizedBox(height: 100),
                      ElevatedButton(onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const Themes()),
                      );},
                        child: const Text('Commençons   l’aventure',style: TextStyle(color: Color(
                            0xffFF9523),fontSize: 20),textAlign: TextAlign.center),
                        style:
                        ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                            animationDuration: const Duration(milliseconds: 100),
                         fixedSize: const Size(240, 80),
                            primary:Colors.white70 ,
                            shadowColor: Colors.black12 ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ),),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}


/*

import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:try1/pages/Avatars.dart';
import 'package:try1/pages/Questions.dart';
//import 'package:try1/pages/bienvenue.dart';

class Themes extends StatefulWidget {
  const Themes({Key? key}) : super(key: key);

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  int groupValue_5 = 0;
  bool click= true;
  bool click2= true;

  get img => null;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        extendBodyBehindAppBar: true,
        appBar:
        AppBar(
          backgroundColor: Colors.transparent,
         leading:  FRadio(
            width: 80,
            height: 80,
            normalColor: Colors.transparent,
            value: 1,
            groupValue: groupValue_5,
            onChanged: (value) {
              setState(() {
                groupValue_5 = value as int;
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Avatars()));//espace parent

              });
            },
            child: img,
            hoverChild: img,
            selectedChild: img,
            hasSpace: false,
            toggleable: true,
            selectedColor: const Color(0xffffc900),
            border: 1.5,

          ),
          elevation: 0,
          actions: [
            FRadio(
              width: 80,
              height: 80,
              normalColor: Colors.transparent,
              value: 1,
              groupValue: groupValue_5,
              onChanged: (value) {
                setState(() {
                  groupValue_5 = value as int;
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Avatars()));//espace parent

                });
              },
              child: Image.asset("assets/img/img_29.png", width: 75),
              hoverChild: Image.asset("assets/img/img_29.png", width: 50),
              selectedChild: Image.asset("assets/img/img_29.png", width: 50),
              hasSpace: false,
              toggleable: true,
              selectedColor: const Color(0xffffc900),
              border: 1.5,

            ),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.white70
                ),
                onPressed: (){setState(() {
              click= !click;
            });},

                child: Padding(
              padding:  const EdgeInsets.all(10.0),
                 child: Icon((click==false)? Icons.music_off : Icons.music_note))),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.white70
                ),
                onPressed: (){setState(() {
                  click2= !click2;
                });},

                child: Padding(
                    padding:  const EdgeInsets.all(10.0),
                    child: Icon((click2==false)? Icons.volume_off : Icons.volume_up_rounded))),
          IconButton(
            icon: const Icon(Icons.people_alt_rounded),
            onPressed: () {},
          ),
    // add more IconButton
    ],),
        /*drawer: Drawer(
            child:  CircleAvatar(
              radius :10,
              // foregroundImage: ,
              backgroundImage: const Avatars().img,
            ), // Populate the Drawer in the next step.
        ),*/
        body: Container(
        /*width: 320.0,
        height: 710.0,*/
        decoration: const BoxDecoration(

          image: DecorationImage(
              image: AssetImage("assets/img/img_20.png"),
              fit: BoxFit.cover),
        ),
     child:
        Center
          (
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Center(
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //const SizedBox(height: 200),
                      const SizedBox(height: 220),
                      ElevatedButton(onPressed: (){if (kDebugMode) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Questions()));

                      }},
                      child: const Text('Petit déjeuner',style: TextStyle(color:  Color(
                          0xff010158),fontSize: 20),),
                      style:

                      ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.white70 ,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          elevation: 20

                      ),),
                    ],
                  ),
                ),

              Center(
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const SizedBox(height: 250),
                    ElevatedButton(onPressed: (){if (kDebugMode) {
                      print('hello');
                    }},
                      child: const Text('Déjeuner',style: TextStyle(color: Color(
                          0xff010158),fontSize: 22)),
                      style:

                      ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.white70,
                          shape:
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          elevation: 20
                      ),),
                  ],
                ),
              ),


              Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 169),
                    ElevatedButton(onPressed: (){if (kDebugMode) {
                      print('hello');
                    }},
                      child: const Text('Diner',style:  TextStyle(color: Color(
    0xff010158),fontSize: 24)),

                      style:

                      ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.white70,
                          shape:
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        elevation: 20

                      ),),
                    const SizedBox(height: 10),
                  ],
                ),
              ),]
            ),
        ),
    ),
      );
  }
}

*/