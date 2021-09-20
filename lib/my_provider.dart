import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum Status { OnLine, OffLine }

class Account {
  final String name;
  final String imageUrl;
  final Status status;
  final String mesage;
  final String time;

  Account(
      {@required this.name,
      @required this.imageUrl,
      @required this.status,
      @required this.mesage,
      @required this.time});
}

class MyProvider with ChangeNotifier {
  List<Account> acountList = [
    Account(
      name: "Ahmed\nMahmoud",
      imageUrl: "assets/images/1.jpg",
      status: Status.OnLine,
      mesage: "Hello Mustafa",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Jolia\nkaajn",
      imageUrl: "assets/images/2.jpg",
      status: Status.OnLine,
      mesage: "How are you ?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "John\nMaged",
      imageUrl: "assets/images/3.jpg",
      status: Status.OffLine,
      mesage: "Don't forget to call me",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Kemoo\nDangel",
      imageUrl: "assets/images/4.jpg",
      status: Status.OnLine,
      mesage: "This is my Book",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Zezo\nNegm",
      imageUrl: "assets/images/5.jpg",
      status: Status.OnLine,
      mesage: "You will be fine",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Ziad\nMahmoud",
      imageUrl: "assets/images/6.jpg",
      status: Status.OnLine,
      mesage: "you should take a rest",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Mohamed\nNaser",
      imageUrl: "assets/images/7.jpg",
      status: Status.OnLine,
      mesage: "How are you?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Monika\nFemaal",
      imageUrl: "assets/images/8.jpg",
      status: Status.OffLine,
      mesage: "How are you Mustafa ?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Dr.Alisaa\nJokkall",
      imageUrl: "assets/images/9.jpg",
      status: Status.OnLine,
      mesage: "you must call me ok?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Hr.kajask\nleooall",
      imageUrl: "assets/images/10.jpg",
      status: Status.OnLine,
      mesage: "this is your Choise ",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Kssksk\nModels",
      imageUrl: "assets/images/11.jpg",
      status: Status.OffLine,
      mesage: "Mustafa",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Actor\nJohn",
      imageUrl: "assets/images/12.jpg",
      status: Status.OnLine,
      mesage: "if you are good , go to work",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
  ];

  List<Account> messageList = [
    Account(
      name: "Ahmed Mahmoud",
      imageUrl: "assets/images/1.jpg",
      status: Status.OnLine,
      mesage: "Hello Mustafa",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Jolia kaajn",
      imageUrl: "assets/images/2.jpg",
      status: Status.OnLine,
      mesage: "How are you ?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "John Maged",
      imageUrl: "assets/images/3.jpg",
      status: Status.OffLine,
      mesage: "Don't forget to call me",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Kemoo Dangel",
      imageUrl: "assets/images/4.jpg",
      status: Status.OnLine,
      mesage: "This is my Book",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Zezo Negm",
      imageUrl: "assets/images/5.jpg",
      status: Status.OnLine,
      mesage: "You will be fine",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Ziad Mahmoud",
      imageUrl: "assets/images/6.jpg",
      status: Status.OnLine,
      mesage: "you should take a rest",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Mohamed Naser",
      imageUrl: "assets/images/7.jpg",
      status: Status.OnLine,
      mesage: "How are you?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Monika Femaal",
      imageUrl: "assets/images/8.jpg",
      status: Status.OffLine,
      mesage: "How are you Mustafa ?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Dr.Alisaa Jokkall",
      imageUrl: "assets/images/9.jpg",
      status: Status.OnLine,
      mesage: "you must call me ok?",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Hr.kajask leooall",
      imageUrl: "assets/images/10.jpg",
      status: Status.OnLine,
      mesage: "this is your Choise ",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Kssksk Models",
      imageUrl: "assets/images/11.jpg",
      status: Status.OffLine,
      mesage: "Mustafa",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
    Account(
      name: "Actor John",
      imageUrl: "assets/images/12.jpg",
      status: Status.OnLine,
      mesage: "if you are good , go to work",
      time: DateTime.now().hour.toString() +
          ":" +
          DateTime.now().minute.toString(),
    ),
  ];
}
