/**
 * COMPONENTES DE INTERFACE/BIBLIOTECA OPTYDEV
 * NOME:    opty_componentes.dart
 * CRIAÇÃO: Carlos Roberto dos Santos Silva
 * DATA:    30/09/2019 às `4hs
 * OBJETIVO:
 *      Padroninzar os componentes usados na OPTYDEV
 */


import 'package:flutter/material.dart';


class OptyComponets {

  Widget logo({double size = 100, Color color = Colors.red}){
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
      child: Image.asset("assets/images/img_kokan_03.jpeg", fit: BoxFit.cover),
      ///Icon(Icons.adjust, size: size, color: color,),
    );
  }

  Widget inputNmUsuario(){
    return Padding(
      padding: const EdgeInsets.all(5.0), //.only(right: 30.0 , left: 30.0 , bottom: 15),
      //padding: const EdgeInsets.only(right: 30.0 , left: 30.0 , bottom: 15),
      child: TextField(
        decoration: InputDecoration (
          border: OutlineInputBorder(),
          labelText: "Nume do Usuário",
          hintText: "Nome do Usuário"
        ),
      ),
    );
  }

  Widget inputSenha(){
    return Padding(
      padding: const EdgeInsets.all(5.0), //EdgeInsets.only(right: 30.0 , left: 30.0 , bottom: 15),
      child: TextField(
        decoration: InputDecoration (
          border: OutlineInputBorder(),
          labelText: "Senha",
          hintText: "********"
        ),
      ),
    );
  }


  Widget btnOptySignIn({bool isLoading = false, 
    double circular = 8.0, 
    double width = double.infinity, 
    double height = 50, 
    Function onTap, 
    EdgeInsets padding = const EdgeInsets.all(10.0) }){
      
    //.only(right: 30.0, left: 30.0, top: 70, bottom: 70)
    _loading(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }

    _text(){
      return Text("Login Padrão", textAlign: TextAlign.center, style: TextStyle(fontSize:18, color: Colors.white),);
    }

    return InkWell(
      onTap: onTap,
          child: Padding(
        padding: padding,
        child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(circular),
                      color: Colors.red,
                    ),
                    alignment: Alignment.center,
                    child: isLoading?  _loading(): _text()
                    ),
      ),
    );
  }
/*
  Widget btnSignInGoogle(){

  }
  Widget btnSignInFacebook(){
  }
*/
  Widget textEsqueceuSenha(){
    return Center(child: Text("Esqueceu à senha", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: Colors.grey, fontSize: 16),),);

  }
}