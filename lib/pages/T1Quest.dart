
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:try1/pages/bienvenue.dart';
import 'package:try1/pages/themes.dart';


class PetDej1 extends StatefulWidget {
  const PetDej1({ Key? key }) : super(key: key);

  @override
  State<PetDej1> createState() => _PetDej1State();
}

class _PetDej1State extends State<PetDej1> {
 bool insideTarget=false;
 bool lait=false,crepe=false,oeuf=false,beurre=false;
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
      extendBodyBehindAppBar: true ,
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
        
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img_31.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child:Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: [
              Title(color: Colors.deepOrangeAccent, child: Text('\n\n\n\n Pour le petit-déjeuner, je mange ...\n',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12)),)),
              DragTarget<String>(builder: (context, candidateData, rejectedData)
              {
                return Container(
                  margin: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 12.2),
                  width : 250.0,
                  height :250.0,
                  color : Colors.transparent,
                  child : FruitBox('🍽', Colors.transparent), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
                );
              },
              //onwill ccpt to accept the necessary things

              onAccept: (emoji)
              {
                setState(() {
                  if((emoji=='🧈')&&(beurre==false))
          { beurre=true;
           score+=10;
          }
          else if ((emoji=='🥞')&&(crepe==false))
          { crepe=true;
           score+=10;
          } else  if((emoji=='🍳')&&(oeuf==false))
          { oeuf=true;
           score+=10;
          }
          else if((emoji=='🥛')&&(lait==false))
          { lait=true;
          score+=10;
          }
          else if ((emoji=='🌮' )|| (emoji=='🍕' ) ) {
            tentative-=1;
          }
                if (tentative==0)
                {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const Themes()),
                        );
                }else if (score==40) {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FruitBox('🧈', Colors.transparent),
                FruitBox('🌮', Colors.transparent),
                FruitBox('🥞', Colors.transparent),
                ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ FruitBox('🍕', Colors.transparent),
                FruitBox('🍳', Colors.transparent),
                FruitBox('🥛', Colors.transparent),
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
          )
        ),
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
            child : Center(child: Text(boxIcon,style:  const TextStyle(fontSize: 80),))
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