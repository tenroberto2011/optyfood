import 'package:flutter/material.dart';

class ButtonTextIcon extends StatelessWidget{

final String text;
final IconData iconData;
final Color color;

  const ButtonTextIcon({Key key, this.text="", this.iconData=Icons.account_box, this.color = Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(0.0),
    child:
    // Usando decoration,borderRadius, boxShadow
    Container (
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0,),
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(3.0, 5.0),
              blurRadius: 10
            ),
        ]),
        height: 46,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Expanded(flex: 1, child: Icon(iconData, color: Colors.white),),
              SizedBox(width: 20,),
              Expanded(flex: 4, child: Text(text, textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 22)),),
            ],
          ),
        ),
      );
    }
}