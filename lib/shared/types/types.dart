import 'package:flutter/material.dart';

class Phones {
  String imgSrc;
  String desc;
  double price;
  String phoneName;
  Phones(
      {required this.imgSrc,
        required this.phoneName,
        required this.price,
        this.desc = "Дефолтное описание для элементов, у которых нет описания."});
}

final List<Phones> phones = [
  Phones(
      price: 199.99,
      imgSrc:
      "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW9iaWxlJTIwcGhvbmV8ZW58MHx8MHx8fDA%3D",
      phoneName: "Iphone"),
  Phones(
      price: 123.99,
      imgSrc: "https://tehnoteca.ru/img/103/102116/samsung_gt_c3300k_2.jpg",
      phoneName: "Samsung"),
  Phones(
      price: 1234.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1510HzIuw0c1V42llf5pfjX-hNd0P2jymGw&usqp=CAU",
      phoneName: "Poco"),
  Phones(
      price: 139.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEBoEOCPjsM3osK6X9PPquZJHCBfSxpyteeQ&usqp=CAU",
      phoneName: "Tas"),
  Phones(
      price: 99.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsZjtSjFW8zRMYdojRfGh2mg_mf3qnJe6x9Q&usqp=CAU",
      phoneName: "Ori"),
  Phones(
      price: 100.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHUihy-XBIwDqos0dnfrxp8BHu57mhZKmrA&usqp=CAU",
      phoneName: "Apon"),
  Phones(
      price: 123.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Oko"),
  Phones(
      price: 10.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Riba"),
  Phones(
      price: 312.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Shiva"),
  Phones(
      price: 200.99,
      imgSrc:
      "https://tehnoteca.ru/img/103/102116/samsung_gt_c3300k_2.jpg",
      phoneName: "Test phone"),
  Phones(
      price: 312.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Xphone"),
  Phones(
      price: 999.99,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Random phone"),
  Phones(
      price: 199.9,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Old phone"),
  Phones(
      price: 200.00,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEBoEOCPjsM3osK6X9PPquZJHCBfSxpyteeQ&usqp=CAU",
      phoneName: "What"),
  Phones(
      price: 123.23,
      imgSrc:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Telephone"),
];