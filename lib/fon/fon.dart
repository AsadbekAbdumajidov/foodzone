
import 'package:flutter/material.dart';

class Fon extends StatefulWidget {
  const Fon({Key? key}) : super(key: key);

  @override
  _FonState createState() => _FonState();
}

class _FonState extends State<Fon> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/fon');
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                width: double.infinity,
                color: const Color.fromRGBO(251, 175, 3, 1),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/foodzone.jpg"),
                          fit: BoxFit.contain)),
                ),
              ),
            ),
          ],
        ),
      );
}
