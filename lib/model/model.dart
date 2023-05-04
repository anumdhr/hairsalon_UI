import 'package:flutter/material.dart';

class GridModel {
  Icon icon;
  String name;
  String image;

  GridModel({required this.icon, required this.name, required this.image});
}

List<GridModel> gridModel = [
  GridModel(
      icon: const Icon(
        Icons.woman,
        color: Colors.black,
      ),
      name: "Haircut",
      image: "assets/Images/Rectangle 195.png"),
  GridModel(
      icon: const Icon(Icons.back_hand_rounded, color: Colors.black),
      name: "Nails",
      image: 'assets/Images/Rectangle 192.png'),
  GridModel(
      icon: const Icon(Icons.face, color: Colors.black),
      name: "Facial",
      image: 'assets/Images/Rectangle 192.png'),
  GridModel(
      icon: const Icon(Icons.colorize_rounded, color: Colors.black),
      name: "Coloring",
      image: 'assets/Images/Rectangle 192.png'),
  GridModel(
      icon: const Icon(Icons.spa, color: Colors.black),
      name: "Spa",
      image: 'assets/Images/Rectangle 192.png'),
  GridModel(
      icon: const Icon(Icons.smoking_rooms, color: Colors.black),
      name: "Waxing",
      image: 'assets/Images/Rectangle 192.png'),
  GridModel(
      icon: const Icon(Icons.mark_chat_unread_sharp, color: Colors.black),
      name: "Makeup",
      image: 'assets/Images/Rectangle 192.png'),
  GridModel(
      icon: const Icon(Icons.boy_rounded, color: Colors.black),
      name: "Massage",
      image: 'assets/Images/Rectangle 192.png'),
];

class HairModel {
  String image;

  HairModel({required this.image});
}

List<HairModel> hairModel = [
  HairModel(image: "assets/Images/Rectangle 192.png"),
  HairModel(image: "assets/Images/Rectangle 193.png"),
  HairModel(image: "assets/Images/Rectangle 194.png"),
];
