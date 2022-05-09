
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:try1/pages/bienvenue.dart';
import 'package:try1/pages/themes.dart';


class Din1 extends StatefulWidget {
  const Din1({ Key? key }) : super(key: key);

  @override
  State<Din1> createState() => _Din1State();
}

class _Din1State extends State<Din1> {
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
        
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img_37.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child:Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: [
              Title(color: Colors.deepOrangeAccent, child: Text(' \n\n\n\nPour le Diner, je mange ...\n',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12)),)),
              DragTarget<String>(builder: (context, candidateData, rejectedData)
              {
                return Container(

                  width : 200.0,
                  height :200.0,
                  color : Colors.transparent,
                  child : FruitBox('🍽', Colors.transparent,'plate'), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
                );
              },
              //onwill ccpt to accept the necessary things

              onAccept: (emoji)
              {
                setState(() {
                  if((emoji=='🍢')&&(beurre==false))
          { beurre=true;
           score+=10;
          }
          else if ((emoji=='🐟')&&(crepe==false))
          { crepe=true;
           score+=10;
          } else  if((emoji=='🥗')&&(oeuf==false))
          { oeuf=true;
           score+=10;
          }
          else if((emoji=='🍲')&&(lait==false))
          { lait=true;
          score+=10;
          }
          else if ((emoji=='🥮' )|| (emoji=='🥐' ) ) {
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
              // Title(color: Colors.deepOrangeAccent, child: Text('Je mange ....... pour le diner  ',style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 124, 38, 12)),)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FruitBox('🥗', Colors.transparent,'beurre'),
                FruitBox('🍲', Colors.transparent,'burrito'),
                FruitBox('🥐', Colors.transparent,'crèpe'),
                ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ FruitBox('🥮', Colors.transparent,'pizza'),
                FruitBox('🐟', Colors.transparent,'oeuf'),
                FruitBox('🍢', Colors.transparent,'lait'),
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
String Done;
FruitBox(this.boxIcon,this.boxColor,this.Done);

   

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