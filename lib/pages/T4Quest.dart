import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../itemModel.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  var player = AudioCache();
  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(value: 'salade', name: '🥬', img: 'assets/img/FoodetS/salade.png'),
      ItemModel(value: 'poisson', name: '🐟', img: 'assets/img/FoodetS/poisson_ch.png'),
      ItemModel(value: 'pDT', name: '🥔', img: 'assets/img/FoodetS/mashed-potatoes.png'),
      ItemModel(value: 'soupe', name: '🥔🥕🧅', img: 'assets/img/FoodetS/soup.png'),
      ItemModel(value: 'Carotte', name: '🌱', img: 'assets/img/FoodetS/carrot.png'),
      ItemModel(value: 'Carotte', name: '🌱', img: 'assets/img/FoodetS/radish.png'),
      ItemModel(value: 'Carotte', name: '🌱', img: 'assets/img/FoodetS/onion.png'),

    ];
    items2 = List<ItemModel>.from(items);

    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text.rich(
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
                    ],
                  ),
                ),
              ),
              if (!gameOver)
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      children: items.map((item) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          child: Draggable<ItemModel>(
                            data: item,
                            childWhenDragging: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 50,
                            ),
                            feedback: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const Spacer(flex: 2),
                    Column(
                      children: items2.map((item) {
                        return DragTarget<ItemModel>(
                          onAccept: (receivedItem) {
                            if (item.value == receivedItem.value) {
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                              });
                              score += 10;
                              item.accepting = false;

                              player.play('assets/sounds/true.wav');
                            } else {
                              setState(() {
                                score -= 5;
                                item.accepting = false;
                                player.play('assets/sounds/false.wav');
                              });
                            }
                          },
                          onWillAccept: (receivedItem) {
                            setState(() {
                              item.accepting = true;
                            });
                            return true;
                          },
                          onLeave: (receivedItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          builder: (context, acceptedItems, rejectedItems) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: item.accepting
                                        ? Colors.grey[400]
                                        : Colors.grey[200],
                                  ),
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.width / 6.5,
                                  width: MediaQuery.of(context).size.width / 3,
                                  margin: const EdgeInsets.all(8),
                                  child: Text(
                                    item.name,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  )),
                        );
                      }).toList(),
                    ),
                    const Spacer(),
                  ],
                ),
              if (gameOver)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Game Over',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ],
                  ),
                ),
              if (gameOver)
                Container(
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          initGame();
                        });
                      },
                      child: const Text(
                        'New Game',
                        style: TextStyle(color: Colors.white),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  String result() {
    if (score == 70) {
      player.play('assets/sounds/success.wav');
      return 'Awesome!';
    } else {
      player.play('assets/sounds/tryAgain.wav');
      return 'Play again to get better score';
    }
  }
}