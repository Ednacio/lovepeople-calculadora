import 'package:app_calculadora/controller/calc_pressed_controller.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final ShapeBorder? shape;
  final TextStyle? style;
  final SizedBox? sizedBox;
  const CalcButton({
    Key? key,
    required this.text,
    this.shape,
    this.style,
    this.sizedBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: sizedBox ??
          SizedBox(
            width: 66,
            height: 66,
            child: FloatingActionButton(
              onPressed: () {
                print(text);
              },
              shape: shape ??
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
              child: Text(
                text,
                style: style ??
                    TextStyle(
                      fontSize: 28,
                    ),
              ),
            ),
          ),
    );
  }
}
