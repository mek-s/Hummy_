
import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:Hummy/pages/bienvenue.dart';

class Avatars extends StatefulWidget {
  const Avatars({Key? key}) : super(key: key);

  // ignore: recursive_getters
  get img => img;

  @override
  _AvatarsState createState() => _AvatarsState();
  
}

class _AvatarsState extends State<Avatars> {

  bool enable_1 = true;



  int? groupValue_5 = 0;


  bool _isDisable=true;
  //Image img= Image(image: AssetImage("assets/img/img_19.png"));
  ImageProvider<Object> img=  const AssetImage("assets/img/img_19.png");



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            /// Child
            childDemo(),

          ],
        ),
      ),
    );
  }




  Widget childDemo() {
    return
      Container(



        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img_18.png"),
              fit: BoxFit.cover),
        ),
        child:
        Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius :57,
                      // foregroundImage: ,
                      backgroundImage: img,
                    ),
                  ],),),

              Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(color: Colors.blue, child: const Text(


                    "choisir un avatar",style: TextStyle(fontFamily: 'FredokaOne',fontSize: 15),),)
                ],
              )
              ),


              Center(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 1,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img.png");
                            });
                          },
                          child: Image.asset("assets/img/img.png", width: 75),
                          hoverChild: Image.asset("assets/img/img.png", width: 50),
                          selectedChild: Image.asset("assets/img/img.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 2,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_1.png");
                            });
                          },
                          child: Image.asset("assets/img/img_1.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_1.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_1.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 3,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_2.png");
                            });
                          },
                          child: Image.asset("assets/img/img_2.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_2.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_2.png", width: 50),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: const Color(0xffffc900),
                          border: 1.5,
                        ),
                      ],
                    ),],
                ),
              ),
              Center(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 4,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_3.png");
                            });
                          },
                          child: Image.asset("assets/img/img_3.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_3.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_3.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 5,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_4.png");
                            });
                          },
                          child: Image.asset("assets/img/img_4.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_4.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_4.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 6,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_5.png");
                            });
                          },
                          child: Image.asset("assets/img/img_5.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_5.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_5.png", width: 50),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: const Color(0xffffc900),
                          border: 1.5,
                        ),
                      ],
                    ),],
                ),
              ),
              Center(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 7,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_6.png");
                            });
                          },
                          child: Image.asset("assets/img/img_6.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_6.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_6.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 8,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_7.png");
                            });
                          },
                          child: Image.asset("assets/img/img_7.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_7.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_7.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 9,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_8.png");
                            });
                          },
                          child: Image.asset("assets/img/img_8.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_8.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_8.png", width: 50),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: const Color(0xffffc900),
                          border: 1.5,
                        ),
                      ],
                    ),],
                ),
              ),
              Center(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 10,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_9.png");
                            });
                          },
                          child: Image.asset("assets/img/img_9.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_9.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_9.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 11,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_10.png");
                            });
                          },
                          child: Image.asset("assets/img/img_10.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_10.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_10.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 12,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_11.png");
                            });
                          },
                          child: Image.asset("assets/img/img_11.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_11.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_11.png", width: 50),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: const Color(0xffffc900),
                          border: 1.5,
                        ),
                      ],
                    ),],
                ),
              ),
              Center(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 13,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_12.png");
                            });
                          },
                          child: Image.asset("assets/img/img_12.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_12.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_12.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 14,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_13.png");
                            });
                          },
                          child: Image.asset("assets/img/img_13.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_13.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_13.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 15,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_14.png");
                            });
                          },
                          child: Image.asset("assets/img/img_14.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_14.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_14.png", width: 50),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: const Color(0xffffc900),
                          border: 1.5,
                        ),
                      ],
                    ),],
                ),
              ),
              Center(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 16,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_15.png");
                            });
                          },
                          child: Image.asset("assets/img/img_15.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_15.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_1.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 17,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_16.png");
                            });
                          },
                          child: Image.asset("assets/img/img_16.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_16.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_16.png", width: 50),
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

                        const SizedBox(height: 9),
                        FRadio(
                          width: 80,
                          height: 80,
                          value: 18,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                              _isDisable=false;
                              img= const AssetImage("assets/img/img_17.png");
                            });
                          },
                          child: Image.asset("assets/img/img_17.png", width: 75),
                          hoverChild: Image.asset("assets/img/img_17.png", width: 50),
                          selectedChild: Image.asset("assets/img/img_17.png", width: 50),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: const Color(0xffffc900),
                          border: 1.5,
                        ),
                      ],
                    ),],
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text(' '),
                        ElevatedButton(onPressed: _isDisable? null : () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Bienvenue()));
                        },

                          child: const Text('OK',style:  TextStyle(color: Color(
                              0xffffffff),fontSize: 20)),
                          style:

                          ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                              primary: Colors.deepOrangeAccent,
                              shadowColor: Colors.cyan,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )

                          ),

                        ),
                      ],
                    )
                  ],
                ),


              )
            ],
          ),

        ),

      );
  }


}