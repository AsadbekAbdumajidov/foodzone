import 'package:flutter/material.dart';
import 'package:foodzone/menu/data/cart_data.dart';
import 'package:foodzone/menu/order.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Cartt> sum = List.generate(
    40,
    (__) => Cartt(ind: 0),
  );
  int jami = 0;
  List jamiL = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  int? i;
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
                      onPressed: () {},
                      icon: const Icon(Icons.search, size: 25))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              child: Row(
                children: const [
                  Text(
                    "MY CART",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
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
                    Positioned(
                      top: 50,
                      left: 150,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (sum[__].ind == 0) {
                                setState(() {});
                              } else {
                                sum[__].ind -= 1;
                                jamiL[__] -= Cartt.price[__];

                                debugPrint("$jamiL");
                                jami = 0;
                                for (var i = 0; i < jamiL.length; i++) {
                                  jami += jamiL[i] as int;
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.035,
                              width: MediaQuery.of(context).size.height * 0.035,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                border:
                                    Border.all(color: Colors.black12, width: 1),
                              ),
                              child: const Center(
                                  child: Text("-",
                                      style: TextStyle(fontSize: 20))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("${sum[__].ind}",
                                style: const TextStyle(fontSize: 16)),
                          ),
                          InkWell(
                            onTap: () {
                              jami = 0;
                              if (sum[__].ind <= 20) {
                                setState(() {
                                  sum[__].ind += 1;

                                  jamiL[__] = Cartt.price[__] * sum[__].ind;

                                  debugPrint("$jamiL");
                                  for (var i = 0; i < jamiL.length; i++) {
                                    jami += jamiL[i] as int;
                                  }
                                });
                              } else {
                                setState(() {});
                              }
                            },
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.035,
                              width: MediaQuery.of(context).size.height * 0.035,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                border:
                                    Border.all(color: Colors.black12, width: 1),
                              ),
                              child: const Center(
                                  child: Text("+",
                                      style: TextStyle(fontSize: 20))),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                    Positioned(
                      right: 11,
                      top: 1,
                      child: InkWell(
                        onTap: () {
                          jamiL[__] = 0;
                          debugPrint("$jamiL");
                          jami = 0;
                          for (var i = 0; i < jamiL.length; i++) {
                            jami += jamiL[i] as int;
                          }
                          Cartt.name.remove(Cartt.name[__]);
                          Cartt.foto.remove(Cartt.foto[__]);
                          Cartt.price.remove(Cartt.price[__]);
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1462,
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade600,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.remove_shopping_cart_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 300, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Total",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  Text("\$$jami",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 25)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Order(
                              jami: jami,
                              sanoq: i,
                            )));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.93,
                decoration: BoxDecoration(
                    color: Colors.amber.shade700,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Center(
                    child: Text("Place order",
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              ),
            ),
          ],
        ),
      );
}
