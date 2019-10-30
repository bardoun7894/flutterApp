import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  String data = "";
  OrderPage({this.data});

  Widget orderProfile() {
    return new Image.asset("img/padlock.png",width: 200,height: 300,);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        color: Colors.white,
        child: Column( children: <Widget>[
          Padding(padding: EdgeInsets.all(50.0),),
        orderProfile(),
          Text(
            data,
            style: TextStyle(fontSize: 20),
          ),
        ],

        ));
  }
}
