// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:foodzone/fon/data/fon_data.dart';

class Fon_bir extends StatefulWidget {
  const Fon_bir({Key? key}) : super(key: key);

  @override
  _Fon_birState createState() => _Fon_birState();
}

int s = 1;
int dott = 1;

class _Fon_birState extends State<Fon_bir> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          s == 1
                              ? Fons.fons[0]['foto'][0]
                              : s == 2
                                  ? Fons.fons[0]['foto'][1]
                                  : Fons.fons[0]['foto'][2],
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 140,
                  left: 60,
                  child: Column(
                    children: [
                      Text(
                        s == 1
                            ? Fons.fons[0]['s1'][0]
                            : s == 2
                                ? Fons.fons[0]['s1'][1]
                                : Fons.fons[0]['s1'][2],
                        style: const TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        s == 1
                            ? Fons.fons[0]['s2'][0]
                            : s == 2
                                ? Fons.fons[0]['s2'][1]
                                : Fons.fons[0]['s2'][2],
                        style: const TextStyle(
                            fontSize: 25, color: Colors.black87),
                      ),
                      
                    ],
                  ),
                ),
                const Positioned(
                  bottom: 80,
                  left: 70,
                  child:  Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        ),
                      ),),
                Positioned(
                    bottom: 30,
                    left: 160,
                    child: dott == 1
                        ? Row(
                            children: const [
                              Icon(Icons.fiber_manual_record,
                                  color: Color.fromRGBO(252, 173, 5, 1),
                                  size: 18),
                              Icon(Icons.fiber_manual_record,
                                  color: Colors.black54, size: 18),
                              Icon(Icons.fiber_manual_record,
                                  color: Colors.black54, size: 18),
                            ],
                          )
                        : dott == 2
                            ? Row(
                                children: const [
                                  Icon(Icons.fiber_manual_record,
                                      color: Colors.black54, size: 18),
                                  Icon(Icons.fiber_manual_record,
                                      color: Color.fromRGBO(252, 173, 5, 1),
                                      size: 18),
                                  Icon(Icons.fiber_manual_record,
                                      color: Colors.black54, size: 18)
                                ],
                              )
                            : Row(
                                children: const [
                                  Icon(Icons.fiber_manual_record,
                                      color: Colors.black54, size: 18),
                                  Icon(Icons.fiber_manual_record,
                                      color: Colors.black54, size: 18),
                                  Icon(Icons.fiber_manual_record,
                                      color: Color.fromRGBO(252, 173, 5, 1),
                                      size: 18),
                                ],
                              )),
                Positioned(
                  right: 30,
                  bottom: 25,
                  child: InkWell(
                    onTap: () {
                      dott += 1;

                      s += 1;
                      setState(() {
                        if (s > 3) {
                          Navigator.pushNamedAndRemoveUntil(context, '/pasLog', (route) => false);
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(252, 173, 5, 1),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: const Center(
                          child: Text("TEXT",
                              style: TextStyle(color: Colors.white))),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
