import 'package:flutter/material.dart';
import 'package:guess_number/firstpage.dart';

class LoserPage extends StatelessWidget {
  const LoserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Image.asset('images/dislike.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
                child: Text(
              'You lost',
              style: TextStyle(fontSize: 34),
            )),
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
