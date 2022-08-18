import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LAB 2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'LAB 2_Keo-Bua-Bao'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key ?key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int mayra=0;
  int input=0;
  bool button1= false;
  bool button2= false;
  bool button3= false;
  TextEditingController txtMayRa = new TextEditingController();
  TextEditingController txtKetQua = new TextEditingController();

  void XuLyMayRa() {
    setState(() {
      var rng = new Random();
      mayra = rng.nextInt(3);
      if  (mayra == 0) {
        txtMayRa.text="Kéo";
      }else if (mayra==1) {
        txtMayRa=="Búa";
      }else{
        txtMayRa.text="Bao";
      }
      int kq = input - mayra;
      if  (kq==0)
        txtKetQua.text="HÒA";
      else if(kq==1||kq==-2)
        txtKetQua.text="BẠN THẮNG";
      else
        txtKetQua.text="BẠN THUA";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    "Búa - Kéo - Bao",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Center(
                  child: Text(
                    "Bạn ra gì?",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(48, 5, 0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            button1 = true;
                            button2 = false;
                            button3 = false;
                            input = 0;
                            XuLyMayRa();
                          });
                        },
                        color: button1 ? Colors.red : Colors.blue,
                        child: Image.asset("assets/Appimages/keo.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            button1 = true;
                            button2 = false;
                            button3 = false;
                            input = 1;
                            XuLyMayRa();
                          });
                        },
                        color: button2 ? Colors.red : Colors.blue,
                        child: Image.asset("assets/Appimages/bua.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            button1 = true;
                            button2 = false;
                            button3 = false;
                            input = 2;
                            XuLyMayRa();
                          });
                        },
                        color: button3 ? Colors.red : Colors.blue,
                        child: Image.asset("assets/Appimages/bao.png"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Center(
                  child: TextField(
                    controller: txtMayRa,
                    enabled: false,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(labelText: "Máy ra: "),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 240),
                child: Center(
                  child: TextField(
                    controller: txtKetQua,
                    enabled: false,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(labelText: 'Kết quả: '),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: Text("Nghỉ chơi!"),
                ),
              ),
            ],
          ),
        ));
  }
}
