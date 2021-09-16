import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final ShapeBorder? shape;

  const CalcButton({
    Key? key,
    required this.text,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {},
          shape: shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
