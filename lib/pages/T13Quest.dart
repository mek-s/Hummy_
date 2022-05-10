
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Hummy/pages/bienvenue.dart';
import 'package:Hummy/pages/themes.dart';


class ChoixPetDej1 extends StatefulWidget {
  const ChoixPetDej1({ Key? key }) : super(key: key);

  @override
  State<ChoixPetDej1> createState() => _ChoixPetDej1State();
}

class _ChoixPetDej1State extends State<ChoixPetDej1> {
 bool insideTarget=false;
 bool F1=false,F2=false,F3=false,F4=false,F5=false,F6=false;
 String activeEmoji='🍽';
   var player = AudioCache();
 
   int score=0;
  late bool gameOver;
   int tentative=3;
  initGame() {
    gameOver = false;
    score = 0;int tentative=3;
  
  }
   
  @override
  void initState() {
    super.initState();
    initGame();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Score: ',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: '$score',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.teal),
                      ),
                      TextSpan(
                        text: 'tentative: ',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: '$tentative',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.teal),
                      ),
                      
                    ],
                  ),
                ),
              ),
        
      
      body: Center(
        child:
        Container(
          height :1250,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/img_32.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: [
              Title(color: Colors.deepOrangeAccent, child: Text('\n\n \n\n Un bon  ou mauvais aliment du petit-déjeuner',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12)),textAlign: TextAlign.center,)),

              Row(
                children: [
                  DragTarget<String>(builder: (context, candidateData, rejectedData)
                  {
                    return Container(
                      margin: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 12.2),
                      width : 205.0,
                      height :200.0,
                      color : Colors.transparent,
                      child : FruitBox('✔', Colors.transparent), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
                    );
                  },
                  //onwill ccpt to accept the necessary things

                  onAccept: (emoji)
                  {
                    setState(() {
                      if((emoji=='🧈')&&(F1==false))
          { F1=true;
           score+=10;
          }
          else if ((emoji=='🍌')&&(F2==false))
          { F2=true;
           score+=10;
          } else  if((emoji=='🍳')&&(F3==false))
          { F3=true;
           score+=10;
          }

          else if ((emoji=='🍫' )|| (emoji=='🍨' )|| (emoji=='🍭' ) ) {
            tentative-=1;
          }
                    if (tentative==0)
                    {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const Themes()),
                            );
                    }else if (score==60) {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const Bienvenue()));
                    }

                     }

                       );

                  },

                  onWillAccept: (emoji)
                  {
                    return ((emoji=='🌮' ? true : false)|| (emoji=='🍕' ? false : true)  );
                  },
                  ),
                  DragTarget<String>(builder: (context, candidateData, rejectedData)
                  {
                    return Container(
                      margin: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 12.2),
                      width : 205.0,
                      height :200.0,
                      color : Colors.transparent,
                      child : FruitBox('❌', Colors.transparent), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
                    );
                  },
                  //onwill ccpt to accept the necessary things

                  onAccept: (emoji)
                  {
                    setState(() {
                      if((emoji=='🍫')&&(F6==false))
          { F6=true;
           score+=10;
          }
          else if ((emoji=='🍨')&&(F4==false))
          { F4=true;
           score+=10;
          } else  if((emoji=='🍭')&&(F5==false))
          { F5=true;
           score+=10;
          }

          else if ((emoji=='🍳' )|| (emoji=='🍌' )|| (emoji=='🧈' ) ) {
            tentative-=1;
          }
                    if (tentative==0)
                    {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const Themes()),
                            );
                    }else if (score==60) {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const Bienvenue()));
                    }

                     }

                       );

                  },

                  onWillAccept: (emoji)
                  {
                    return ((emoji=='🌮' ? true : false)|| (emoji=='🍕' ? false : true)  );
                  },
                  ),
                ],
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              // Title(color: Colors.deepOrangeAccent, child: Text('Un bon  ou mauvais aliment du petit-déjeuner',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12)),)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FruitBox('🍫', Colors.transparent),
                FruitBox('🧈', Colors.transparent),
                FruitBox('🍳', Colors.transparent),
                ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ FruitBox('🍨', Colors.transparent),
                FruitBox('🍭', Colors.transparent),
                FruitBox('🍌', Colors.transparent),
                ],
                ),

               /* Row(
                  children: [
                    FruitBox('🍎', Colors.transparent),
                  ],
                ),*/
              ],
            )
             ],
          ),
        )
      ),
    );
  }
}


class FruitBox extends StatelessWidget {
 // const FruitBox({ Key? key }) : super(key: key);
final String boxIcon;
final Color boxColor;

FruitBox(this.boxIcon,this.boxColor);

   

  @override
  Widget build(BuildContext context) {
    return  Draggable(
          data :boxIcon,
          child: Container(
            height :120.0,
          width : 120.0,
          color: boxColor,
          
          child : Center(
            child : Center(child: Text(boxIcon,style:  const TextStyle(fontSize: 90),))
          )
          ),
          feedback: Material(
            child: Container( 
              height :120.0,
            width : 120.0,
            color: Colors.transparent,
            child : Center(child: Text(boxIcon,style:  const TextStyle(fontSize: 50),) )
            ),
          ),
          childWhenDragging:Container( 
            height :120.0,
          width : 120.0,
          color: Colors.blueAccent) ,
        );
  }
}
