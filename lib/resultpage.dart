import 'package:flutter/material.dart';
import 'package:guess_number/firstpage.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),

            Image.asset('images/like.png'),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Text('You win',style: TextStyle(fontSize: 30),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Text(
                'Restart',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
