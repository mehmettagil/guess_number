import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guess_number/loserpage.dart';
import 'package:guess_number/resultpage.dart';

class InputPage extends StatefulWidget {



  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var kfGuess = TextEditingController();
  int randomNumber = 0;
  int remainingGuesses =6;
  String help = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    randomNumber = Random().nextInt(101);
    print('Rastgele sayı : $randomNumber');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GuessNumber'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),

            Text( 'Remaining Guesses = $remainingGuesses',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),
            Text('Help : $help',style: TextStyle(fontSize: 22),),
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),

            TextField(
              controller: kfGuess,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Guess',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  remainingGuesses = remainingGuesses -1 ;
                });
                if(remainingGuesses == -1){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoserPage()));
                };
                int guess = int.parse(kfGuess.text);
                if(guess == randomNumber){
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ResultPage()));
                  return;

                }
                if(guess > randomNumber){

                  help = 'Sayıyı azalt';
                }
                else{
                  help = 'Sayıyı arttır';
                }


              //  Navigator.push(context,
                //    MaterialPageRoute(builder: (context) => ResultPage()));
              },
              child: Text('Guess'),
            )
          ],
        ),
      ),
    );
  }
}
