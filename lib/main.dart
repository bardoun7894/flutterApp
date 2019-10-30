import 'package:flutter/material.dart';
import 'package:flutter_app/LoginPage.dart';
import 'package:flutter_app/OrderPage.dart';

void main() => runApp( Home());


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Welcome to My APP",
      theme: ThemeData(),
      home: LoginPage(),
routes: {
        '/second': (_)=> OrderPage(data: "",) },
    );
  }



}
