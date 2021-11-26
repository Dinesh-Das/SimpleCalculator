import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final Color textColor;
  final double textSize;
  final Function callBack;
  const CalculatorButton(
      {Key? key,
      required this.text,
      required this.fillColor,
      required this.textColor,
      required this.textSize,
      required this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          foregroundColor: textColor,
          backgroundColor: fillColor,
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: textSize),
            ),
          ),
          onPressed: () => callBack(text),
        ),
      ),
    );
  }
}
