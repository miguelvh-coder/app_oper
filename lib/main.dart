import 'package:flutter/material.dart';
import 'ui/pages/pregunta.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = "";
  double result = 0.0;

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        input = "";
        result = 0.0;
      } else if (buttonText == "=") {
        try {
          result = evalExpression(input);
        } catch (e) {
          result = 0.0;
        }
      } else {
        input += buttonText;
      }
    });
  }

  double evalExpression(String expression) {
    return double.tryParse(expression) ?? 0.0;
  }

  Widget buildCircularButton(String buttonText, {Color? buttonColor}) {
    buttonColor ??= Colors.blue; // Color predeterminado
    if (buttonText == "=") {
      buttonColor = Colors.orange; // Cambia el color del botón "=" a naranja
    }

    return Container(
      width: 60.0,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () {
          _onButtonPressed(buttonText);
        },
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 24.0),
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(16.0),
          primary: buttonColor, // Establece el color del botón
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<List<String>> buttonGrid = [
      ["7", "8", "9"],
      ["4", "5", "6"],
      ["1", "2", "3"],
      ["C", "0", "go"],
    ];

    List<Widget> buttonRows = [];

    for (List<String> row in buttonGrid) {
      List<Widget> rowButtons = [];
      for (String buttonText in row) {
        rowButtons.add(buildCircularButton(buttonText));
      }
      buttonRows.add(Row(
        children: rowButtons,
        mainAxisAlignment: MainAxisAlignment.center,
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora Flutter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              input,
              style: TextStyle(fontSize: 36.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "$result",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          Column(
            children: buttonRows,
          ),
        ],
      ),
    );
  }
}
