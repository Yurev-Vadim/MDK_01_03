import 'package:flutter/material.dart';

class AccPage extends StatelessWidget{
  const AccPage({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 10, 10, 10)
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Личный кабинет',
            style: TextStyle(fontSize: 26),
          ),
          centerTitle: true
        ),
        body: Padding(padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              ElevatedButton(onPressed:(){
                Navigator.pushNamed(context, 'favorite');
              },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                  child: const Row(
                  children: [
                    Icon(Icons.favorite_border,
                      color: Color.fromARGB(255, 10, 10, 10),
                      size: 35,
                    ),
                    Text('Избранное',
                      style: TextStyle(fontSize: 26,
                      color: Color.fromARGB(255, 10, 10, 10)
                    ))
                  ])
              ),
              ElevatedButton(onPressed:(){
                Navigator.pushNamed(context, 'buy');
              },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                  child: const Row(
                      children: [
                        Icon(Icons.shopping_bag,
                            color: Color.fromARGB(255, 10, 10, 10),
                            size: 35,
                        ),
                        Text('Покупки',
                            style: TextStyle(fontSize: 26,
                            color: Color.fromARGB(255, 10, 10, 10)))]
                  )
              ),
              ElevatedButton(onPressed:(){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                  child: const Row(
                      children: [
                        Icon(Icons.message,
                            color: Color.fromARGB(255, 10, 10, 10),
                          size: 35,
                        ),
                        Text('Отзывы',
                            style: TextStyle(fontSize: 26,
                            color: Color.fromARGB(255, 10, 10, 10)))]
                  )
              ),
              ElevatedButton(onPressed:(){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                  child: const Row(
                      children: [
                        Icon(Icons.settings,
                          color: Color.fromARGB(255, 10, 10, 10),
                          size: 35,
                        ),
                        Text('Настройки',
                            style: TextStyle(fontSize: 26,
                            color: Color.fromARGB(255, 10, 10, 10)))]
                  )
              ),
              ElevatedButton(onPressed:(){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                  child: const Row(
                      children: [
                        Icon(Icons.manage_accounts,
                            color: Color.fromARGB(255, 10, 10, 10),
                          size: 35,
                        ),
                        Text('Поддержка',
                            style: TextStyle(fontSize: 26,
                            color: Color.fromARGB(255, 10, 10, 10)))]
                  )
              ),
              ElevatedButton(onPressed:(){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                  child: const Row(
                      children: [
                        Icon(Icons.description,
                            color: Color.fromARGB(255, 10, 10, 10),
                          size: 35,
                        ),
                        Text('О приложении',
                            style: TextStyle(fontSize: 26,
                            color: Color.fromARGB(255, 10, 10, 10)))]
                  )
              ),
              ElevatedButton(onPressed:(){
                Navigator.pushNamed(context, 'log');
              },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 80, 80, 80))),
                  child: const Row(
                      children: [
                        Icon(Icons.logout,
                            color: Color.fromARGB(255, 10, 10, 10),
                          size: 35,
                        ),
                        Text('Выйти',
                            style: TextStyle(fontSize: 26,
                            color: Color.fromARGB(255, 10, 10, 10)))]
                  )
              ),
            ],
          ),
        )
    );
  }
}