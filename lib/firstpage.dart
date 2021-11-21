import 'package:flutter/material.dart';
import 'package:guess_number/inputpage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.2),
            RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),side: BorderSide(color: Colors.white)),
              padding: EdgeInsets.all(30.0),
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InputPage()));
              },
              child: Text(
                'Random Number',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
