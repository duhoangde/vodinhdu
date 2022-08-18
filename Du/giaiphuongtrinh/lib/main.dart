import 'package:flutter/material.dart';

void  main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Lap 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: Scaffold(
        appBar: AppBar(
        title: Text("LAP 1"),
    ),
    body: Center(
    child: MyHomePage(),
    ),
    ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  TextEditingController heSoAController = new TextEditingController();
  TextEditingController heSoBController = new TextEditingController();
  TextEditingController ketQuaController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Stack(children: <Widget>[
            Text(
              "Giải phương trình bậc 1",
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth =6
                  ..color = Colors.blue[700]),
              ),
              Text("Giải phương trình bậc 1",
                style: TextStyle(fontSize: 30, color: Colors.blue[300]))
          ])
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0 , 40),
            child: TextField(
              controller: heSoAController,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                labelText: "Hệ số a",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: TextField(
              controller:  heSoBController,
              style: TextStyle(fontSize: 18,color: Colors.black),
              decoration: InputDecoration(
                labelText:"Hệ số b",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          )
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child:  SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                onPressed: timNghiemX,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Text(
                  "Tìm nghiệm x",
                  style:  TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
          )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: TextField(
                  controller: ketQuaController,
                  style: TextStyle(fontSize: ),
                ),
              )

           ),
        ],

      ),
    )
  }
}

