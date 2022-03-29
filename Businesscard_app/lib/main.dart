import 'package:flutter/material.dart';

void main() {
  runApp(BisnissCard());
}

class BisnissCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CircleAvatar(
                radius: 152,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('img/tharwat.png'),
                )),
            const Text(
              'Eman',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Color(0xff6C8090),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Color(0xff6C8090),
              thickness: 1,
              endIndent: 60,
              indent: 60,
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 65,
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 32,
                      color: Color(0xff2B475E),
                    ),
                    Padding(padding: EdgeInsets.only(left: 22)),
                    Text(
                      '(+20)01017978541',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 65,
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      size: 32,
                      color: Color(0xff2B475E),
                    ),
                    Padding(padding: EdgeInsets.only(left: 22)),
                    Text(
                      'eman@gmail.com',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////////////////ممكن استخدم الlistTil  بدل دا كله وهتكون مختصرة اكتر
///
///وبيكون استخدامها كدة
///Card(
///shape:RoundedRectangleBorder(borderRadius:BorderRadius.circuler(6)),
///margin:EdgeInsets.semytrec(horizontal:16,vertical:8),
///leading: Icon(Icons.mail,
                 // size: 32,
                 // color:Color(0xff2B475E) ,
                 // ),
                // title:Text('eman@gmail.com',  style: TextStyle(
             // fontSize: 24,
             // ),
                 //  ),

///)
