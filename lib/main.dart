import 'package:flutter/material.dart';
import 'package:foodzone/fon/fon.dart';
import 'package:foodzone/fon/fon1.dart';
import 'package:foodzone/menu/cart.dart';
import 'package:foodzone/menu/malumot.dart';
import 'package:foodzone/menu/menu.dart';
import 'package:foodzone/menu/order.dart';
import 'package:foodzone/menu/welcome.dart';
import 'package:foodzone/password/log.dart';
import 'package:foodzone/password/pass.dart';
import 'package:foodzone/password/pass_log.dart';
void main() {
  runApp(const MeningApp());
}

class MeningApp extends StatelessWidget {
  const MeningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Example Dasturim",
      routes: {
        '/': (context) => const Fon(),
        '/fon': (context) => const Fon_bir(),
        '/pasLog': (context) => const PassLog(),
        '/log': (context) => const Log(),
        '/wel': (context) =>  const Welcome(),
        '/pass': (context) => const Pass(),
        '/menu': (context) => const Menyu(),
        '/cart': (context) => const Cart(),
        '/mall': (context) => const Cart(),
        '/or': (context) => Order(),
        '/mal': (context) =>  Mal(1,2,3,1,2,1,1,1,1),
      },
    );
  }
}
