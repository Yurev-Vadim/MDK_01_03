import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
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
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              style: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              style: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            const SizedBox(height: 16.0),
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
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                child: const Text("Зарегистрироваться",
                  style: TextStyle(
                      color: Color.fromARGB(255, 30, 30, 30)
                  )
                )
            ),
          ],
        )
    );
  }
}
