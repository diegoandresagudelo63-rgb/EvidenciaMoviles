//Realizar en flutter un conversor de pesos a dolares y euros
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
  final TextEditingController number3Controller = TextEditingController();
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
                decoration: InputDecoration(labelText: 'Moneda en pesos'),
              ),
              SizedBox(height: 10,),

              TextField(
                controller: number2Controller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Conversion a Dolares'),
              ),
              SizedBox(height: 10,),
              
              TextField(
                controller: number3Controller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Conversion a Euros'),
              ),
              SizedBox(height: 10,),

              Text('Resultado:  $result'),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                double pesos = double.tryParse(number1Controller.text) ?? 0.0;
                
                //Tasa Cambio
                double tasaDolar = 3200.0;
                double tasaEuro = 3500.0;

                double dolares = pesos / tasaDolar;
                double euros = pesos / tasaEuro;
                setState((){
                  number2Controller.text = dolares.toStringAsFixed(2);
                  number3Controller.text = euros.toStringAsFixed(2);
                  result = 'Conversion Hecha';
                });
              }, child: Text('Calcular'))
            ],
          ),
        ),
      ),
    );
  }
}