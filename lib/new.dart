import 'package:flutter/material.dart';


  class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new MyHomeState();
  }

  }
  class MyHomeState extends State<MyApp>{

int num =0;
static String name2="jaamamal";
  String ss  =" ";



_clear(){
  _userController.clear();

  _passController.clear();
   _login();
}
_login(){
  setState(() {

   String ll =  _userController.text;
  String   mm =_passController.text;
   ss= ll+mm;




  });

}
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
      appBar:AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        centerTitle: true,
        title: Text("Login Page",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      backgroundColor:Colors.white,

    body:  new Container(
        color:Colors.black12,
        padding: EdgeInsets.all(22.5 ),
alignment: Alignment.center,
        child:new SingleChildScrollView(
      child:  new Column(

          children: <Widget>[

            new Padding( padding: EdgeInsets.all(22),),

            new Image.asset('img/login.png',height: 139,width:140,),

            new Padding( padding: EdgeInsets.fromLTRB(0, 50, 0, 20),),

            loginForm()

          ]
      ),

      )
    )
    );

  }

Widget loginForm( ){
  return new Center(


    child: new Column(
      children: <Widget>[
        new TextField(
          controller: _userController,onTap: null,
          decoration:  decorateField(Icon(Icons.person), "enter ur username"),),
        new Padding( padding : EdgeInsets.fromLTRB(30, 10, 30, 10) ),
        new TextField(controller: _passController,obscureText: true,onTap: null,decoration: decorateField(Icon(Icons.lock), "enter ur password"),),
        new Padding( padding : EdgeInsets.fromLTRB(30, 10, 30, 10) ),
         new Center(

           child: new Row(
             children: <Widget>[

               new Padding( padding : EdgeInsets.fromLTRB(50, 0, 10, 0)),
               new FlatButton(padding: EdgeInsets.all(10) ,onPressed: _login, child: Text("Login",style: TextStyle(fontSize:20,color: Colors.white,backgroundColor: Colors.blue),)),
               new Padding( padding : EdgeInsets.fromLTRB(50, 0, 10, 0)),
               new FlatButton( padding:EdgeInsets.all(10),onPressed: _clear, child: Text("Register",style: TextStyle(fontSize:20,color: Colors.white,backgroundColor: Colors.blue),))

             ],
           ),

         )
        ,
        new Text(ss,style: TextStyle(color: Colors.red,fontSize: 30,fontStyle: FontStyle.italic),)
      ],
    )
    , );

}

final TextEditingController _userController=new TextEditingController();
final TextEditingController _passController=new TextEditingController();

     decorateField(Icon icon, String hint){
  return InputDecoration(
      hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
      hintText: hint,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 3,
        ),
      ),
      prefixIcon: Padding(
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).primaryColor),
          child: icon ,
        ),
        padding: EdgeInsets.only(left: 30, right: 10),
      )
  );

}


  }

