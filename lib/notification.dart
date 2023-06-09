import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class NotificationPage extends StatelessWidget {
  final String title;
  const NotificationPage({Key? key, required this.title});
  void _handleRegisterClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => MyHomePage(
                title: '',
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFFDAA520), // Define a cor de fundo do Scaffold como amarelo

      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color(0xFFDAA520),
        child: ListView(
          children: <Widget>[
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(50), // Define o raio da borda
                border: Border.all(
                  color: Colors.white, // Cor da borda
                  width: 2, // Espessura da borda
                ),
                color: Colors.white, // Cor de fundo da borda
              ),
              child: Image.asset('lib/images/logo.jpg'),
            ),
            SizedBox(height: 70),
            Container(
              margin: EdgeInsets.only(left: 50),
              child: Text(
                'By accepting our notifications, you will be able to know when our algorithms detect the best time to bet',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 230),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 240.0),
                  child: Text(
                    'Next  >',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
