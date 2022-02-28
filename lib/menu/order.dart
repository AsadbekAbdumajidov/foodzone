// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:foodzone/menu/data/cart_data.dart';

class Order extends StatefulWidget {
  int? jami;
  int? sanoq;
  Order({Key? key, this.jami, this.sanoq}) : super(key: key);
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Order> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 10),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 10, top: 40, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.height * 0.035,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.black87, width: 1),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 16,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/wel');
                      },
                      icon: const Icon(Icons.home_outlined, size: 30))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              child: Row(
                children: const [
                  Text(
                    "MY Order",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.47,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/fon.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: GridView.builder(
                itemCount: Cartt.foto.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: MediaQuery.of(context).size.width * 0.35,
                  crossAxisCount: 1,
                ),
                itemBuilder: (_, __) => Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 80, right: 10, top: 0, bottom: 10),
                      child: Builder(
                        builder: (context) {
                          return Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: Colors.black38, width: 1)),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.amber.shade600,
                        radius: 54,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 52,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(Cartt.foto[__]),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 16,
                        left: 150,
                        child: Text(Cartt.name[__],
                            style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))),
                    const Positioned(top: 50, left: 150, child: Text("x")),
                    Positioned(
                      top: 95,
                      left: 150,
                      child: Text(
                        "${Cartt.price[__]}\$",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 70, right: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.add_location_outlined),
                        const Text(
                          "Address",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10, left: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.payment_rounded),
                        const Text(
                          "Payment",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 20, bottom: 10, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Subtotal",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 18)),
                      Text("\$${widget.jami}",
                          style: const TextStyle(
                              color: Colors.black87, fontSize: 22)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Taxes & Fee",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                        const Text("\$5",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 22)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Delivery",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 18)),
                      const Text("Free",
                          style:
                              TextStyle(color: Colors.black87, fontSize: 18)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("TOTAL",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                        Text("\$${widget.jami! + 5}",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 22)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Cartt.name.clear();
                Cartt.foto.clear();
                Cartt.price.clear();
                myAvesomeDialog(context);
                setState(() {});
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.93,
                decoration: BoxDecoration(
                    color: Colors.amber.shade700,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Center(
                    child: Text("Pay & Place order",
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              ),
            ),
          ],
        ),
      );

  myAvesomeDialog(context) {
    return AwesomeDialog(
      dismissOnBackKeyPress: true,
      context: context,
      dialogType: DialogType.SUCCES,
      dialogBackgroundColor: const Color.fromRGBO(240, 228, 195, 10),
      desc: "Xaridingiz uchun raxmat !!!",
    )..show();
  }
}
