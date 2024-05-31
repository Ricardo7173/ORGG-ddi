import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Login"),
        leading: IconButton(
          icon: const Icon(Icons.verified_user),
          onPressed: () { },
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: () { }, icon: const Icon(Icons.person_2_sharp)),
          IconButton(onPressed: () { }, icon: const Icon(Icons.more_vert))
        ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login', style: const TextStyle(
              fontSize: 60, 
              fontWeight: FontWeight.w100
              )),
              const SizedBox(height: 30),
            const Text('Ingresa tu correo',style: TextStyle(fontSize: 25)),
            const SizedBox(height: 30),
            TextFormField(
              obscureText: true,
            ),
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