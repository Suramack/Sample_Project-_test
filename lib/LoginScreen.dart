import 'package:flutter/material.dart';
import 'registerScreen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'MusicX',
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Girassol",
              fontSize: 30,
              letterSpacing: 1.6),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "UserName",
                  labelText: "User",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width * .75,
              margin: EdgeInsets.only(
                  top: 50,
                  left: MediaQuery.of(context).size.width * .25,
                  right: 95),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .75,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .25,
                  top: 20,
                  right: 95),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20, right: 0),
              width: MediaQuery.of(context).size.width * .55,
              child: RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.red),
                  ),
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {}),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          fontFamily: "Girassol",
                          letterSpacing: 2,
                          fontSize: 25.5),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          "SignUp",
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
