import 'package:flutter/material.dart';

void main() {
  runApp(BirthDayCard());
}

class BirthDayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //
        backgroundColor: Color(0xffD2BCD5),
        body:Center( 
        child:Image(image: AssetImage('img/birthday_card.png')),
      )
      ),
    );
  }
}
