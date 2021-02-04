import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Dicee', style:TextStyle(
            fontFamily: 'yusie',
            fontSize: 30,
          )
            ,)),
          backgroundColor: Colors.blueGrey,
        ),
        body:DicePage(),
      ),

    )

  );
}
class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldicen=6;
  int rdicen=1;
  int sum;
  int mult;
  int sub;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
              child:
              FlatButton(onPressed: () {
                setState(() {
                  ldicen=Random().nextInt(6)+1;
                  sum=ldicen+rdicen;
                  mult=ldicen*rdicen;
                  sub=ldicen-rdicen;
                });
              },
                child: Image(image: AssetImage('images/dice$ldicen.png'), width: 200,),
              )
          ),
          Expanded(
            child: FlatButton(onPressed: () {
              setState(() {
                rdicen=Random().nextInt(6)+1;
                sum=ldicen+rdicen;
                mult=ldicen*rdicen;
                sub=ldicen-rdicen;
              });
            },
              child: Image(image: AssetImage('images/dice$rdicen.png'), width: 200,),
            ),
          ),
          Expanded(
            child: Center(
                child: Text('Sum: $sum  '
                    'Multiplication: $mult '
                    'Subtraction: $sub',
                  style:TextStyle(
                    color: Colors.teal.shade100,
              fontFamily: 'yusie',
              fontSize: 15,

            )
              ,)),
          )
        ],

      ),

    );

  }
}

