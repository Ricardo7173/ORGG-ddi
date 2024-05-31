import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (clickCounter>=1) 
                Text('$clickCounter', style: const TextStyle(
                  fontSize: 160, fontWeight: FontWeight.w100)),
                Text('Clic', style: TextStyle(fontSize: 25),)
            ],
          ) 
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              clickCounter++; 
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
            ),
      );
    }
}