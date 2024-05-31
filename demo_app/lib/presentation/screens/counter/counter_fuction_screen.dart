import 'package:flutter/material.dart';


class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Counter Function"),
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () { },
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: () { }, icon: const Icon(Icons.person_2_sharp)),
          IconButton(onPressed: () { }, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(
              fontSize: 160, 
              fontWeight: FontWeight.w100
              )),
            const Text('Clics',style: TextStyle(fontSize: 25),)
          ],
        ) 
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh, 
              onPressed: () {
              clickCounter = 0;
              setState(() { });
            },),
            const SizedBox(height: 10,),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
              clickCounter ++;
              setState(() { });
            },
              ),
            const SizedBox(height: 10,),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
              clickCounter --;
              setState(() { });
            },
              ),
          ],
        ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed, 
      child: Icon(icon),
    );
  }
}