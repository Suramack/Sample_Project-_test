import 'package:flutter/material.dart';
//import 'package:itsmemack/LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String userName;
  String password;
  TextEditingController userNameController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: <Widget>[
          newUpdate(),
          findTrain(),
          //spotTrain(),
         liveStation(),
        ],
      ),
    );
  }

  Widget appBar() {
    return AppBar(
      title: Text(
        "Where is my Train",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }

  Widget newUpdate() {
    return Container(
      color: Colors.black,
      child: Row(
        children: <Widget>[
          Container(child: Text("New Update Available")),
          Container(
            child: FlatButton(
              color: Colors.green,
              child: Text("UPDATE"),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget findTrain() {
    return Column(
      children: <Widget>[
        Container(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.white,
              hintText: "From",
              labelText: "From",
              labelStyle: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          color: Colors.black,
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
                hintText: "To",
                labelText: "To",
                labelStyle: TextStyle(fontStyle: FontStyle.italic)),
          ),
        ),
        Container(
          child: FlatButton(
            color: Colors.green,
            child: Text("Find Train"),
            textColor: Colors.white,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget spotTrain() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text("SPOT TRAIN"),
          ),
          Row(
            children: <Widget>[
              Container(

                child: TextField(
                  decoration: InputDecoration(
                    hintText: "SPOTTED TRAIN",
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text("Search")),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget liveStation() {
    return Column(
      children: <Widget>[
        Container(
          child: Text("LIVE STATION"),
        ),
        Row(
          children: <Widget>[
            Container(
              width: 60,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,

                  hintText: "Live Station",
                ),
              ),
            ),
            Container(
              width: 50,
              child: FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text("Search")),
            ),
          ],
        ),
      ],
    );
  }

}
