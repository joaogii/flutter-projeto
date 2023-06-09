import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class PrincipalPage extends StatelessWidget {
  final String title;
  const PrincipalPage({Key? key, required this.title});
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
      appBar: AppBar(
        backgroundColor: Color(
            0xFFDAA520), // Substitua pelo valor hexadecimal da cor desejada

        toolbarHeight: 120, // Defina a altura desejada

        title: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: Text(
                    'MIDAS ONE',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  margin: EdgeInsets.only(top: 45),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.asset(
                      'lib/images/perfil.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      // Lógica do primeiro botão
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown, // Define a cor de fundo do botão
                    ),
                    child: Text('BLAZE'),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      // Lógica do segundo botão
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                    ),
                    child: Text('DOUBLE'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Lógica do primeiro botão
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFDAA520),
                      minimumSize: Size(100, 70),
                    ),
                    child: Text('Player assistant'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Lógica do segundo botão
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(100, 70),
                    ),
                    child: Text(
                      'Game statistics',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Game momentum:',
                        style: TextStyle(fontSize: 17,
                        fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'Paying',
                        style: TextStyle(fontSize: 17,
                        color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Game time:',
                        style: TextStyle(fontSize: 17,
                         fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 7),
                      Text(
                        '11:05',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Next rounds starts:',
                        style: TextStyle(fontSize: 17,
                         fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 7),
                      Text(
                        '10 sec',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            Container(
              height: 1.0,
              color: Color(0xFFA87C60),
            ),
            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.only(right: 35),
              child: Text(
                'Next rounds probability:',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF636363),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: SizedBox(
                      width: 250,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Lógica do primeiro botão
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey, // Altera a cor de fundo para cinza
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('WHITE'),
                            Text('05%',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,

                ),)
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: SizedBox(
                      width: 250,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Lógica do segundo botão
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey, // Altera a cor de fundo para cinza
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('BLACK'),
                            Text('85%',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.green,

                ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: SizedBox(
                      width: 250,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Lógica do terceiro botão
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey, // Altera a cor de fundo para cinza
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('RED'),
                            Text('10%',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,

                ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),

            Container(
              height: 1.0,
              color: Color(0xFFA87C60),
            ),
            SizedBox(height: 17),
             Padding(
              padding: EdgeInsets.only(right: 110),
              child: Text(
                'Last round results',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF636363),

                ),
              ),
            ),
             SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Color+number:',
                        style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'red 3',
                        style: TextStyle(fontSize: 20,
                        color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Amount bet:',
                        style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'RS 59.8735,32',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Amount paid:',
                        style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'RS 72.654,19',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),





          ],
        ),
      ),
    );
  }
}
