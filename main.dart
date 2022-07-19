// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var isyellow = true;
  @override
  Widget build(BuildContext context) {
    final color = isyellow ? Colors.yellow : Colors.red;
    // ignore: unnecessary_new
    return new Scaffold(
      backgroundColor: Colors.black,
      // ignore: unnecessary_new
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        // ignore: prefer_const_constructors
        Image(
          image: AssetImage('assets/images/moonimg.jpg'),
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
        ),
        Form(
          child: Theme(
            data: ThemeData(
                brightness: Brightness.dark,
                //primarySwatch: Colors.teal,
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.teal, fontSize: 20.0))),
            child: Container(
              padding: EdgeInsets.all(50.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.login,
                      size: 80.0,
                      color: color,
                    ),
                    // Text(
                    //   "LOGIN PAGE",
                    //   style: TextStyle(
                    //     color: Colors.yellowAccent,
                    //     fontSize: 30.0,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 30.0)),
                    MaterialButton(
                      height: 50.0,
                      minWidth: 100,
                      color: Colors.teal,
                      textColor: Colors.black,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      onPressed: () {
                        setState(() {
                          if (isyellow == true) {
                            isyellow = false;
                          } else {
                            isyellow = true;
                          }
                        });
                      },
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
