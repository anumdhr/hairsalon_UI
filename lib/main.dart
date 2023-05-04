import 'package:flutter/material.dart';
import 'package:ladies_salon_uidesign/screen/booking/booking_page.dart';
import 'package:ladies_salon_uidesign/screen/homescreen/home_page.dart';
import 'package:ladies_salon_uidesign/screen/navigation_screen/navigation.dart';
import 'package:ladies_salon_uidesign/screen/service_info_page/service_info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
