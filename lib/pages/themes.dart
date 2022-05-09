

import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:Hummy/pages/Avatars.dart';
import 'package:Hummy/pages/Questions.dart';
//import 'package:Hummy/pages/bienvenue.dart';

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
                Navigator.pushNamed(
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
           // const SizedBox(height: 300),
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
           // const SizedBox(height: 300),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  fixedSize: Size( 50,40),
                    primary: Colors.transparent,
                    //shadowColor: Colors,
                  elevation : 0,
                ),
                onPressed: (){setState(() {
                  click= !click;
                });},

                child: Padding(
                    padding:  const EdgeInsets.all(10.0),
                    child: Icon((click==false)? Icons.music_off : Icons.music_note))),
            const SizedBox(height: 300),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  fixedSize: const Size( 50,40),
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  elevation : 0,
                ),
                onPressed: (){setState(() {
                  click2= !click2;
                });},

                child: Padding(
                    padding:  const EdgeInsets.all(10.0),
                    child: Icon((click2==false)? Icons.volume_off : Icons.volume_up_rounded))),
            const SizedBox(height: 300),
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
          /*width: 320.0,*/

          decoration: const BoxDecoration(

            image: DecorationImage(
                image: AssetImage("assets/img/img_20.png"),
                fit: BoxFit.cover),
          ),
          child:

          Center
            (
            child:

            SizedBox(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    SizedBox( height: 200,
                      child: Center(
                        child: Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //const SizedBox(height: 1000),
                            //const SizedBox(height: 100),
                            ElevatedButton(onPressed: (){if (kDebugMode) {
                              Navigator.pushNamed(
                                  context,'/petitDejeuner');

                            }},
                              child: const Text('Petit déjeuner',style: TextStyle(color:  Color(
                                  0xff010158),fontSize: 24),),
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
                    ),

                    Center(
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          const SizedBox(height: 150),
                          ElevatedButton(onPressed: (){if (kDebugMode) {
                            print('hello');
                          }},
                            child: const Text('Déjeuner',style: TextStyle(color: Color(
                                0xff010158),fontSize:30)),
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
                          const SizedBox(height: 170),
                          ElevatedButton(onPressed: (){if (kDebugMode) {
                            print('hello');
                          }},
                            child: const Text('Diner',style:  TextStyle(color: Color(
                                0xff010158),fontSize: 30)),

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
                    ),
                  ]
              ),
            ),
          ),
        ),
      );
  }
}

