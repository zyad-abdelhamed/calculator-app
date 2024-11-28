

import 'package:flutter/material.dart';

class Cal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return CalState();
  }
}

class CalState extends State<Cal>{
  String output = "";
  String _output = "";
  double num1 = 0;
  double num2 = 0;
  String operand = "";
  
 buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "*"|| buttonText=="x^2"||buttonText=="%") {
      
      num1 = double.parse(_output);
      operand = buttonText;
      _output = "0";
      output="0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already contains a decimal");
        return;
      } else {
        _output = _output + buttonText;
      }
      
    } 
    else if (buttonText == "=") {
      if (operand == "x^2") {
        _output = (num1 * num1 ).toString();
       
      }else if(operand=="%"){
          _output=(num1/100).toString();
      }
      else{
      num2 = double.parse(output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
       
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }}
      num1 = 0;
      num2 = 0;
      operand = "";
      
    } else {
      _output = _output + buttonText;
      
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }
   Widget buildButton (String buttonText,Color mycolor){
    return InkWell(child: 
                CircleAvatar(child: Text(buttonText,style: TextStyle(fontSize: 35),),
                radius: 35,backgroundColor:Colors.black12 ,foregroundColor: mycolor,)
                ,onTap: () => buttonPressed(buttonText),
                );
   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Calculator",style: TextStyle(fontSize:30 ),),centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           
            Container(height: 150,margin: EdgeInsets.all(10),
              child: Text(output,style: TextStyle(fontSize: 50),),),
              
            /*Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ Text("Result",style: TextStyle(fontSize: 40,color: Colors.black26)),
                Container(margin: EdgeInsets.all(10),
                  child: Text(output,style: TextStyle(fontSize: 50),),),
              ],
            ),*/
            
               Container(margin: EdgeInsets.all(10),
                 child: IconButton(onPressed: () {
                  Navigator.pushNamed(context, "scale");
                           }, icon: Icon(Icons.scale,color: Colors.greenAccent[700],size: 40,)),
               ),
            
            SizedBox(child: Container(color: Colors.black12,),width: 400,height: 2,),
            SizedBox(height: 5,),
            Container(margin: EdgeInsets.fromLTRB(5, 5, 2, 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildButton( "C",  Colors.deepOrange, ),
                  buildButton( "x^2",  Color.fromARGB(255, 10, 172, 4), ),
                  buildButton("%",  Color.fromARGB(255, 10, 172, 4), ),
                  buildButton( "+",  Color.fromARGB(255, 10, 172, 4),),
                ],
              ),
            ),
            Container(margin: EdgeInsets.fromLTRB(5, 5, 2, 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildButton( "7",  Colors.black, ),
                  buildButton( "8",  Colors.black, ),
                  buildButton("9",  Colors.black, ),
                  buildButton( "/",  Color.fromARGB(255, 10, 172, 4),),
                ],
              ),
            ),
            Container(margin: EdgeInsets.fromLTRB(5, 5, 2, 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildButton( "4",  Colors.black, ),
                  buildButton( "5",  Colors.black, ),
                  buildButton( "6",  Colors.black, ),
                  buildButton( "*",  Color.fromARGB(255, 10, 172, 4),),
                ],
              ),
            ),
            Container(margin: EdgeInsets.fromLTRB(5, 5, 2, 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildButton( "1",  Colors.black,),
                  buildButton( "2",  Colors.black, ),
                  buildButton( "3", Colors.black, ),
                  buildButton( "-",  Color.fromARGB(255, 10, 172, 4), ),
                ],
              ),
            ),
            Container(margin: EdgeInsets.fromLTRB(5, 5, 2, 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildButton( "0",  Colors.black,),
                  buildButton( ".",  Colors.black, ),
                  buildButton( "00",  Colors.black),
                  buildButton( "=",  Colors.red, ),
                ],
              ),
            )
      
          ],
        ),
      ),
      );
  }
  
 
  /*void delete (){
    setState(() {
      if (_output.length>1){
        _output =_output.substring(0,_output.length-1);
      }else{_output="0";
      output='0';
      }
    });
  }*/
 
}

