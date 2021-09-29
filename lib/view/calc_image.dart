import 'package:flutter/material.dart';

class CalcImage extends StatelessWidget {
  const CalcImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            'https://aprovadonovestibular.com/wp-content/uploads/2019/02/formula-bhaskara.png'),
      ],
    );
  }
}
