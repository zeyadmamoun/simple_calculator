import 'package:flutter/material.dart';
import 'Button.dart';
import 'package:math_expressions/math_expressions.dart';

void main() =>runApp(SimpleCalculator());

class SimpleCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor:Color(0xFF1e1e1e),
          body: Calculatorbody(),
        ),
      ),
    );
  }
}
class Calculatorbody extends StatefulWidget {
  @override
  _CalculatorbodyState createState() => _CalculatorbodyState();
}

class _CalculatorbodyState extends State<Calculatorbody> {

  var userText='';
  var userAnswer='';

  List<String>buttons=[
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
  ];

  String equalPressed(String S){
    Parser p = Parser();
    Expression exp = p.parse(S);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    userAnswer=eval.toString();
    return userAnswer;
  }

  String type(int n){
    return buttons[n];
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.only(right: 15.0),
            alignment: Alignment.bottomRight,
            child: Text(userAnswer,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 15.0),
            alignment: Alignment.bottomRight,
            child: Text(userText,
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Expanded(
              //clear all button
              child: Button(cardText:'C',color: Color(0xFF333333),textColor: Color(0xFFcb9529),
                onPressed: (){
                setState(() {
                  userText='';
                });
                },
              ),
            ),
            Expanded(
              //delete one button
              child: Button(cardText: 'D',color: Color(0xFF333333),textColor: Color(0xFFcb9529),
                onPressed: (){
                setState(() {
                  userText=userText.substring(0,userText.length-1);
                });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '%',color: Color(0xFF333333),textColor: Color(0xFFcb9529),
                onPressed: (){
                  setState(() {
                    userText=userText+type(0);
                  });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '/',color: Color(0xFF333333),textColor:Color(0xFFcb9529),
                onPressed: (){
                  setState(() {
                    userText=userText+type(1);
                  });
                },
              )
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Button(cardText:'7',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                setState(() {
                  userText=userText+type(2);
                });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '8',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(3);
                  });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '9',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(4);
                  });
                },
              ),
            ),
            Expanded(
                child: Button(cardText: '*',color: Color(0xFF333333),textColor: Color(0xFFcb9529),
                  onPressed: (){
                    setState(() {
                      userText=userText+type(5);
                    });
                  },
                )
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Button(cardText:'4',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(6);
                  });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '5',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(7);
                  });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '6',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(8);
                  });
                },
              ),
            ),
            Expanded(
                child: Button(cardText: '+',color: Color(0xFF333333),textColor: Color(0xFFcb9529),
                  onPressed: (){
                    setState(() {
                      userText=userText+type(9);
                    });
                  },
                )
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Button(cardText:'1',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(10);
                  });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '2',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(11);
                  });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '3',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(12);
                  });
                },
              ),
            ),
            Expanded(
                child: Button(cardText: '-',color: Color(0xFF333333),textColor: Color(0xFFcb9529),
                  onPressed: (){
                    setState(() {
                      userText=userText+type(13);
                    });
                  },
                )
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Button(cardText:'0',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(14);
                  });
                },
              ),
            ),
            Expanded(
              child: Button(cardText: '.',color: Color(0xFF333333),textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    userText=userText+type(15);
                  });
                },
              ),
            ),
            Expanded(
              //result button
              child: Button(cardText: '=',color: Color(0xFFffc23b),textColor: Colors.white,
              onPressed: (){
                setState(() {
                  equalPressed(userText);
                });
              },
              ),
            ),
          ],
        ),
        SizedBox(height: 30.0)
      ],
    );
  }
}


