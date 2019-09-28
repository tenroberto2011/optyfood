

import 'package:flutter/cupertino.dart';
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
    return Padding(
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0)
            ),
            height: 46,
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "Login Padrão",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height:20,),
          // Usando decoration,borderRadius, boxShadow
          Container(
             child: Container (
              decoration: BoxDecoration(
                color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0,),
                  boxShadow: <BoxShadow> [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(3.0, 5.0),
                      blurRadius: 10
                    ),
                  ]
                ),
                height: 46,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Icon(Icons.add_to_home_screen, color: Colors.white),
                    SizedBox(width: 20,),
                    Text('Toque aqui ...', style: TextStyle( color: Colors.white, fontSize: 22)),
                  ],
                ),
              ),
          ),
          SizedBox(height:20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GoogleSignInButton(onPressed: () {}),
                GoogleSignInButton(onPressed: () {}, darkMode: true),
                FacebookSignInButton(onPressed: () {}),
                MicrosoftSignInButton(onPressed: () {}),
                MicrosoftSignInButton(onPressed: () {}, darkMode: true),
            ],)
          )
        ],
      ),
    );
  }
}
