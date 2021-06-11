import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatefulWidget {
  @override
  CalculadoraState createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  String display = '';
  String operador = '';
  String clear = 'C';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: [
          buildDisplay(),
          buildButtons(),
        ],
      ),
    );
  }

  Widget buildDisplay() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        display,
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
        ),
        textAlign: TextAlign.end,
      ),
    );
  }

  Widget buildButtons() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          buildButtons0(),
          buildButtons1(),
          buildButtons2(),
          buildButtons3(),
        ],
      ),
    );
  }

  Widget buildButtons0() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('7');
            },
            child: Text('7'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('8');
            },
            child: Text('8'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('9');
            },
            child: Text('9'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('/');
              operador = '/';
            },
            child: Text('/'),
          ),
        ),
      ],
    );
  }

  Widget buildButtons1() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('4');
            },
            child: Text('4'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('5');
            },
            child: Text('5'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('6');
            },
            child: Text('6'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('*');
              operador = '*';
            },
            child: Text('*'),
          ),
        ),
      ],
    );
  }

  Widget buildButtons2() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('1');
            },
            child: Text('1'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('2');
            },
            child: Text('2'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('3');
            },
            child: Text('3'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('-');
              operador = '-';
            },
            child: Text('-'),
          ),
        ),
      ],
    );
  }

  Widget buildButtons3() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('C');
              clear = 'C';
            },
            child: Text('C'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('0');
            },
            child: Text('0'),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              calcula();
            },
            child: Text('='),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              addInDisplay('+');
              operador = '+';
            },
            child: Text('+'),
          ),
        ),
      ],
    );
  }

  void calcula() {
    List<String> valores = display.split(operador);
    if (valores.length > 1) {
      setState(() {
        switch (operador) {
          case '+':
            soma(
              int.parse(valores[0]),
              int.parse(valores[1]),
            );
            break;
          case '-':
            subtracao(
              int.parse(valores[0]),
              int.parse(valores[1]),
            );
            break;
          case '*':
            multiplicacao(
              int.parse(valores[0]),
              int.parse(valores[1]),
            );
            break;
          case '/':
            divisao(
              int.parse(valores[0]),
              int.parse(valores[1]),
            );
            break;
        }
      });
    }
  }

  void soma(int valor1, int valor2) {
    display = (valor1 + valor2).toString();
  }

  void subtracao(int valor1, int valor2) {
    display = (valor1 - valor2).toString();
  }

  void divisao(int valor1, int valor2) {
    display = (valor1 ~/ valor2).toString();
  }

  void multiplicacao(int valor1, int valor2) {
    display = (valor1 * valor2).toString();
  }

  void apagar() {
    setState(() {
      if (clear == 'C') {
        display = '';
      }
    });
  }

  void addInDisplay(String text) {
    setState(() {
      display += text;
    });

    if (text == 'C') {
      apagar();
    }
  }
}
