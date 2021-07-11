import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int numberone=0;
  int numbertwo=0;
  String displayedtext = "";
  String res = "";
  String operation = "";
  void btnclicked(String btnval){
    if (btnval == "C"){
      displayedtext = "";
      numberone = 0;
      numbertwo = 0;
      res = "";
    }
    else if(btnval == "+" || btnval == "-" ||btnval == "x" ||btnval == "/" ){
      numberone = int.parse(displayedtext);
      res = "";
      operation = btnval;
    }
    else if(btnval == "="){
      numbertwo = int.parse(displayedtext);
      if (operation == "+"){
        res = (numberone + numbertwo).toString();
      }
      if (operation == "-"){
        res = (numberone - numbertwo).toString();
      }
      if (operation == "x"){
        res = (numberone * numbertwo).toString();
      }

      if (operation == "/"){
        res = (numberone / numbertwo).toString();
      }
    }
    else {
      res = int.parse(displayedtext + btnval).toString();
    }
    setState(() {
      displayedtext = res;
      });
  }
  Widget customButton(String btnval){
    return Expanded(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0),
        ),
        color: Colors.grey[900],
        padding: EdgeInsets.all(27.0),
        onPressed: () => btnclicked(btnval),
        child: Text(
          "$btnval",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true ,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$displayedtext",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                customButton("9"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("8"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("7"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("+"),
                SizedBox(
                  width: 2.0,
                ),
              ],
            ),

            SizedBox(
              height: 3.0,

            ),
            Row(
              children: [
                customButton("6"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("5"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("4"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("-"),
                SizedBox(
                  width: 2.0,
                ),
              ],
            ),
            SizedBox(
              height: 3.0,
            ),
            Row(
              children: [
                customButton("3"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("2"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("1"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("x"),
                SizedBox(
                  width: 2.0,
                ),
              ],
            ),
            SizedBox(
              height: 3.0,
            ),
            Row(
              children: [
                customButton("C"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("0"),
                SizedBox(
                  width: 2.0,
                ),
                customButton("="),
                SizedBox(
                  width: 2.0,
                ),
                customButton("/"),
                SizedBox(
                  width: 2.0,
                ),
              ],
            ),
            SizedBox(
              height: 3.0,
            ),
          ],
        ),

      ),
    );
  }
}














