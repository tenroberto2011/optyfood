

import 'package:flutter/material.dart';
import 'package:mvc_application/mvc.dart' show ViewMVC;
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class OptyFoodLoginApp extends ViewMVC {
  OptyFoodLoginApp()
      : super(
            title: 'OptyFood',
            home: OptyFoodLogin());
}

class OptyFoodLogin extends StatefulWidget {
  @override
  _OptyFoodLoginState createState() => _OptyFoodLoginState();
}

class _OptyFoodLoginState extends State<OptyFoodLogin> {
@override
  void initState() {
    super.initState();
  }

@override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("OptyFood"),
      ),
      body: _body(),
    );

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          Text("Login"),
          TextFormField(),
          SizedBox(height: 10,),
          Text("Senha"),
          TextFormField(
            obscureText: true,
          ),
          SizedBox(height: 20,),
          Container(
            height: 46,
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            height: 46,
            child: GoogleSignInButton(onPressed: () {}),
          ),
          Container(
            height: 46,
            child: GoogleSignInButton(onPressed: () {}, darkMode: true),
          ),
          Container(
            height: 46,
            child: FacebookSignInButton(onPressed: () {}),
          ),
          Container(
            height: 46,
            child: TwitterSignInButton(onPressed: () {}),
          ),
          Container(
            height: 46,
            child: MicrosoftSignInButton(onPressed: () {}),
          ),
          Container(
            height: 46,
            child: MicrosoftSignInButton(onPressed: () {}, darkMode: true),
          ),
        ],
      ),
    );
  }
}
