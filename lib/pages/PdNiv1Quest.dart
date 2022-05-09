
import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:try1/DDQuest/Petit-Dej/T11Quest.dart';
import 'package:try1/DDQuest/Petit-Dej/T13Quest.dart';
import 'package:try1/DDQuest/Petit-Dej/T1Quest.dart';
import 'package:try1/pages/Avatars.dart';
import 'package:try1/pages/themes.dart';

class PdNiv1Quest extends StatefulWidget {
  const PdNiv1Quest({Key? key}) : super(key: key);

  @override
  State<PdNiv1Quest> createState() => _PdNiv1QuestState();
}

class _PdNiv1QuestState extends State<PdNiv1Quest> {
  int groupValue_5 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:

      AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Themes()));
            }),
        elevation: 0,),
      body:SingleChildScrollView(
        child: Column(  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(

              width: 720.0,
              height: 1000.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/img_28.png"),
                    fit: BoxFit.cover),
              ),
              child:

              SizedBox(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 150,
                                height: 80,
                                normalColor: Colors.transparent,
                                value: 1,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  HomeScreen3()));

                                  });
                                },
                                child: Image.asset("assets/img/img_22.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_22.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_22.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,

                              ),
                            ],
                          ),
                          const SizedBox(width: 56),
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 150,
                                height: 80,
                                normalColor: Colors.transparent,
                                value: 2,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int;
                                    Navigator.push( context,MaterialPageRoute(builder: (context) => const ChoixPetDej1()));
                                  });
                                },
                                child: Image.asset("assets/img/img_23.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_23.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_23.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 150,
                                height: 80,
                                normalColor: Colors.transparent,
                                value: 3,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Avatars()));


                                  });
                                },
                                child: Image.asset("assets/img/img_24.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_24.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_24.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,

                              ),
                            ],
                          ),
                          const SizedBox(width: 56),
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 150,
                                height: 80,
                                normalColor: Colors.transparent,
                                value: 4,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int;

                                  });
                                },
                                child: Image.asset("assets/img/img_25.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_25.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_25.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(

                                width: 150,
                                height: 80,
                                value: 5,
                                normalColor: Colors.transparent,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int;

                                  });
                                },
                                child: Image.asset("assets/img/img_26.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_26.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_26.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,



                              ),
                            ],
                          ),
                          const SizedBox(width: 56),
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 150,
                                height: 80,
                                normalColor: Colors.transparent,
                                value: 6,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int;
                                    Navigator.push( context,MaterialPageRoute(builder: (context) => const PetDej1()));
                                  });
                                },
                                child: Image.asset("assets/img/img_27.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_27.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_27.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
