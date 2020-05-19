import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_design/main.dart';

void main() => runApp(Login_design());
class Login_design extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    return new Login_designner();
  }
}
class Login_designner extends State<Login_design>{
  bool _Showparr = false;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          // set contrain cho nó bằng màn
          constraints: BoxConstraints.expand(),
          color: Colors.orange,
          child: Column(
            // mình cho nó căn một hàng từ dưới lên 
            mainAxisAlignment: MainAxisAlignment.end,
            // căn trái 
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: <Widget>[
              
              // logo của flutter 
              Padding(
                // padding cho Container này cách bottom contaner đến top của teck = 40
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  // set cho container hình tron
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, 
                    color: Color(0xffd8d8d8)
                  ),
                  child: FlutterLogo()),
              ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Text(
                    'Hello WelCome Back',
                     style: TextStyle(fontWeight: FontWeight.bold,
                     color: Colors.black,
                     fontSize: 30,
              
                  ),),
                ),
                // set TextField
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: TextField(
                    style: TextStyle(fontSize: 18),
                    // hiển thi lable UsersName
                    decoration: InputDecoration(labelText: "UsersName", labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xff88888888), 
                    )),
                    
                    
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                    obscureText: !_Showparr,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                    decoration: InputDecoration(
                      labelText: "PassWord",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xff888888888),
                      )
                    ),
                  ),
                  // tạo hành động cho Text ta dùng GestureDetector 
                  GestureDetector(
                    onTap: Anvaodo,
                    child: Text(_Showparr? "Hire": "Show" ,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
                ),
                  )               
                 
                                       
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: SizedBox (
                    width: double.infinity,
                    height: 57,
                    child: RaisedButton(
                      // khi hiển thị màu cần phải có onpresed 
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8))),
                      onPressed: Turnonl,
                    child: Text(                     
                      "LogIn",                     
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ), 
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  //color: Colors.red,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Setting", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green[100],
                    ),),

                       Text(
                      "Forgot Password", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green[300],
                    ),)
                    ],
                    
                  ),

                ),
            ],
          ),
        ),
      ),
    );
  }

  Void Anvaodo(){
    // thay đổi tranhgj thái thay đổi trong hàm setstate
    setState(() {
      _Showparr = !_Showparr;
    });
    
  }


  void Turnonl() {}
}