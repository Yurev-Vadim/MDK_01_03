import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
          'OZON',
          style: TextStyle(
          fontSize: 26
          ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 10, 10, 10)
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
        ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              controller: emailController,
              style: const TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              style: const TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(onPressed:() {
                Navigator.pushNamed(context, 'home');
              },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 90, 90, 90))),
                child: const Text("Войти",
                  style: TextStyle(
                      color: Color.fromARGB(255, 30, 30, 30),
                      fontSize: 20
                  )
                )
              ),
             TextButton(onPressed:() {
                Navigator.pushNamed(context, 'reg');
              },
              child: const Text("Регистрация",
                  style: TextStyle(color: Color.fromARGB(255, 150, 150, 150),
                  fontSize: 16
                )
              ))
            ],
          )
    );
  }
}
