// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

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

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  String? validatepass(value) {
    if (value!.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Should be At least 6 character";
    } else if (value.length > 6) {
      return "Should Not be more than 15 character";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 17, 98, 239),
                  Color.fromARGB(255, 93, 198, 247)
                ])),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Container(
                  width: 350,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Form(
                        autovalidateMode: AutovalidateMode.always,
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Email Address",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                  border: Border.all(color: Colors.red)),
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(10.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Email",
                                  ),
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: "Required*"),
                                    EmailValidator(
                                        errorText: "Not a Valid Email"),
                                  ])),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                  border: Border.all(color: Colors.red)),
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(10.0),
                              child: TextFormField(
                                obscureText: true,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Password",
                                ),
                                validator: validatepass,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            height: 50.0,
                            minWidth: 200,
                            color: Colors.blue,
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            onPressed: validate,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
