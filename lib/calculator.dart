import 'dart:math';

import 'package:calculator/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int firstNum;
  late int secondNum;
  String history = '';
  String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Calculator",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: MyColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    color: MyColors.textHistoryColor,
                  ),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    fontSize: 48,
                    color: MyColors.currentText,
                  ),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Row(
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 24,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '<',
                  fillColor: MyColors.buttonColorSpec,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: MyColors.buttonColorSpec,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButton(
                  text: '9',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '7',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: 'X',
                  fillColor: MyColors.buttonColorSpec,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButton(
                  text: '6',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '4',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: MyColors.buttonColorSpec,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButton(
                  text: '3',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '1',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: MyColors.buttonColorSpec,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 24,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: MyColors.buttonColor,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: MyColors.buttonColorSpec,
                  textColor: MyColors.textColor,
                  textSize: 26,
                  callBack: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
