

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_application/mvc.dart' show ViewMVC;
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:optyfood/src/view/button_text_iicon.dart';

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
          Image.asset("assets/images/img_kokan.jpg"),
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
          ButtonTextIcon(
            text: "Click aqui ",
            iconData: Icons.add,
            color: Colors.red
          ),
          SizedBox(height:20,),
          // Butões para Sign em redes sociais
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
