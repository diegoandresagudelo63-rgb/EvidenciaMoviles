import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Calculator'),
        backgroundColor: const Color.fromARGB(255, 0, 34, 157),
        foregroundColor: Color.fromARGB(255, 175, 8, 231),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: number1Controller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Primer Número'),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: number2Controller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Segundo Número'),
              ),
              SizedBox(height: 10,),
              Text('Resultado:  $result'),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                double number1 = double.parse(number1Controller.text);
                double number2 = double.parse(number2Controller.text);
                double sum = number1 + number2;
                setState(() {
                  result = sum.toString();
                });
                print(result);
              }, child: Text('Sumar'))
            ],
          ),
        ),
      ),
    );
  }
}