import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';

import 'principal.dart';
import 'register.dart';
//import 'package:flutter_icons/flutter_icons.dart';

//void main() => runApp(MyApp());
void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Login',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title});
  void _handleRegisterClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => RegistrationPage(
                title: '',
              )),
    );
  }
  void _handlePrincipalClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PrincipalPage(
                title: '',
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 110,
              height: 110,
              child: Image.asset('lib/images/logo.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.amber,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: TextButton(
                    onPressed: () => _handleRegisterClick(context),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email Adress",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Remember',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextButton(
                    onPressed: () {
                      // ação a ser executada ao tocar no botão
                    },
                    child: Text('Forget Password'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
             Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 50.0, // Defina a altura desejada
                    child: ElevatedButton(
                      onPressed: () => _handlePrincipalClick(context),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF9A572D), // Cor de fundo do botão
                        onPrimary: Colors.white, // Cor do texto do botão
                        fixedSize: Size(280.0,
                            50.0), // Define o tamanho desejado (largura, altura)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text(
                    'or connect with',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7d7c7c)),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/logofb.jpg',
                        width: 48,
                        height: 48,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        'lib/images/logoinsta.jpg',
                        width: 35,
                        height: 35,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        'lib/images/logolkd.jpg',
                        width: 35,
                        height: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: Icon(
                Icons.fingerprint,
                color: Colors.grey,
                size: 70,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 90),
              child: Text(
                'Login with touch ID',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7d7c7c)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
