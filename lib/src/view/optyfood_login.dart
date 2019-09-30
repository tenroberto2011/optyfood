

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_application/mvc.dart' show ViewMVC;
import 'package:optyfood/src/view/button_text_iicon.dart';
import 'package:optyfood/src/view/opty_components.dart';

class OptyFoodLoginApp extends ViewMVC {
  OptyFoodLoginApp()
    : super(
      title: 'OptyFood',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: OptyFoodLogin(),
      );
}

class OptyFoodLogin extends StatefulWidget  {
  @override
  _OptyFoodLoginState createState() => _OptyFoodLoginState();
}

class _OptyFoodLoginState extends State<OptyFoodLogin> with OptyComponets {
@override
  void initState() {
    super.initState();
  }
@override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("OptyFood"),
        backgroundColor: Colors.red,
      ),
      body: _body(),
    );

  _body() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        //image: AssetImage(image: AssetImage('assets/images/bg_kokan.jpeg')),
        children: <Widget>[
          //SizedBox(height: 10,),
          logo(),
          inputNmUsuario(),
          inputSenha(),
          textEsqueceuSenha(),
          btnOptySignIn(),
          btnOptySignIn(),
          //Text("Login"),
          //TextFormField(),
          //izedBox(height: 10,),
          //Text("Senha"),
          //TextFormField(
          //  obscureText: true,
          //),
          //SizedBox(height: 20,),
          /*
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
          */
          // Usando decoration,borderRadius, boxShadow
          //
          /*
          SizedBox(height:20,),
          ButtonTextIcon(
            text: "Login Padrão ",
            iconData: Icons.apps,
            color: Colors.black
          ),
          SizedBox(height:20,),
          ButtonTextIcon(
            text: "Login com o Google ",
            iconData: Icons.alternate_email,
            color: Colors.red
          ),
          SizedBox(height:20,),
          ButtonTextIcon(
            text: "Login com Facebook ",
            iconData: Icons.wifi,
            color: Colors.blue
          ),
          SizedBox(height:20,),
          */
          // Butões para Sign em redes sociais
          /*
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
          */
        ],
        
      ),
    );
  }
}
