import 'package:flutter/material.dart';

//Main function
void main() => runApp(Myapp());

// Class Myapp inherits from statelessWidget
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calculatorbutton(
      String buttontext, Color buttoncolor, Color textcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          // function for button pressed
        },
        child: Text(
          buttontext,
          style: TextStyle(
            fontSize: 35,
            color: textcolor,
          ),
        ),
        shape: CircleBorder(),
        color: buttoncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // calculator display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button function called with argument passed
                calculatorbutton('AC', Colors.grey, Colors.black),
                calculatorbutton('+/-', Colors.grey, Colors.black),
                calculatorbutton('%', Colors.grey, Colors.black),
                calculatorbutton('/', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //next line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button function called with argument passed
                calculatorbutton('7', Colors.grey.shade800, Colors.white),
                calculatorbutton('8', Colors.grey.shade800, Colors.white),
                calculatorbutton('9', Colors.grey.shade800, Colors.white),
                calculatorbutton('x', Colors.amber.shade700, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //next line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button function called with argument passed
                calculatorbutton('4', Colors.grey.shade800, Colors.white),
                calculatorbutton('5', Colors.grey.shade800, Colors.white),
                calculatorbutton('6', Colors.grey.shade800, Colors.white),
                calculatorbutton('-', Colors.amber.shade700, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //next line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button function called with arguments
                calculatorbutton('1', Colors.grey.shade800, Colors.white),
                calculatorbutton('2', Colors.grey.shade800, Colors.white),
                calculatorbutton('3', Colors.grey.shade800, Colors.white),
                calculatorbutton('+', Colors.amber.shade700, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //next line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: () {
                    // Button function
                  },
                  shape: StadiumBorder(),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  color: Colors.grey.shade800,
                ),
                calculatorbutton('.', Colors.grey.shade800, Colors.white),
                calculatorbutton('=', Colors.amber.shade700, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
