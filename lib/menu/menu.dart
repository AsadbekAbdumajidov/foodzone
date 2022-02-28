// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:foodzone/menu/data/wel_data.dart';
import 'package:foodzone/menu/malumot.dart';

class Menyu extends StatefulWidget {
  const Menyu({Key? key}) : super(key: key);

  @override
  _MenyuState createState() => _MenyuState();
}

class _MenyuState extends State<Menyu> {
  List<Data> sum = List.generate(10, (__) => Data(son: 0));
  int s1 = 0, s2 = 1, s3 = 0, s4 = 0, s5 = 0, s6 = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/wel');
                      },
                      icon: Icon(
                        Icons.menu_open_sharp,
                        color: Colors.amber.shade800,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 220),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.amber.shade800,
                        radius: 20,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cart');
                            },
                            icon: const Icon(Icons.shopping_cart_outlined,
                                color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("FOODIZM",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16)),
                        Text("MENU",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: menu(context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    border: Border.all(color: Colors.black12, width: 1),
                  ),
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: MediaQuery.of(context).size.width * 0.50,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (_, __) => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mal(
                                        __, __, __, s1, s2, s3, s4, s5, s6)));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 66,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 64,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(foto(__)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: Text(
                            "${name(__)}",
                            style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Row(
                            children: [
                              Text("${price(__)}",
                                  style:
                                      const TextStyle(color: Colors.black87)),
                              const Text("\$",
                                  style: TextStyle(color: Colors.black87)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    itemCount: len(),
                  ),
                ),
              )
            ],
          ),
        ),
      );

  Row menu(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              if (s1 == 0) {
                s2 = 0;
                s3 = 0;
                s4 = 0;
                s5 = 0;
                s6 = 0;
                s1 = 1;
                setState(() {});
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                color: s1 == 1 ? Colors.amber.shade800 : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage:
                        const AssetImage("assets/images/burger.png"),
                    radius: 30,
                  ),
                  Text(
                    "Burgers",
                    style:
                        TextStyle(color: s1 == 1 ? Colors.white : Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              if (s2 == 0) {
                setState(() {
                  s2 = 1;
                  s3 = 0;
                  s4 = 0;
                  s5 = 0;
                  s6 = 0;
                  s1 = 0;
                  debugPrint("$s1,$s2");
                });
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                color: s2 == 1 ? Colors.amber.shade800 : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage:
                        const AssetImage("assets/images/pizza.png"),
                    radius: 30,
                  ),
                  Text(
                    "Pizza",
                    style:
                        TextStyle(color: s2 == 1 ? Colors.white : Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              if (s3 == 0) {
                s2 = 0;
                s3 = 1;
                s4 = 0;
                s5 = 0;
                s6 = 0;
                s1 = 0;
                setState(() {});
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                color: s3 == 1 ? Colors.amber.shade800 : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage:
                        const AssetImage("assets/images/shake.png"),
                    radius: 30,
                  ),
                  Text(
                    "Shakes",
                    style:
                        TextStyle(color: s3 == 1 ? Colors.white : Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              if (s4 == 0) {
                s2 = 0;
                s3 = 0;
                s4 = 1;
                s5 = 0;
                s6 = 0;
                s1 = 0;
                setState(() {});
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                color: s4 == 1 ? Colors.amber.shade800 : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage:
                        const AssetImage("assets/images/chickenn.png"),
                    radius: 30,
                  ),
                  Text(
                    "Chicken",
                    style:
                        TextStyle(color: s4 == 1 ? Colors.white : Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              if (s5 == 0) {
                s2 = 0;
                s3 = 0;
                s4 = 0;
                s5 = 1;
                s6 = 0;
                s1 = 0;
                setState(() {});
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                color: s5 == 1 ? Colors.amber.shade800 : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage:
                        const AssetImage("assets/images/lavash.png"),
                    radius: 30,
                  ),
                  Text(
                    "Lavash",
                    style:
                        TextStyle(color: s5 == 1 ? Colors.white : Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              if (s6 == 0) {
                s2 = 0;
                s3 = 0;
                s4 = 0;
                s5 = 0;
                s6 = 1;
                s1 = 0;
                setState(() {});
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                color: s6 == 1 ? Colors.amber.shade800 : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage:
                        const AssetImage("assets/images/ice cream.png"),
                    radius: 30,
                  ),
                  Text(
                    "Ice cream",
                    style: TextStyle(
                        color: s6 == 1 ? Colors.white : Colors.black,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  foto(__) {
    if (s1 == 1) {
      return Data.bfoto[__];
    } else if (s2 == 1) {
      return Data.pfoto[__];
    } else if (s3 == 1) {
      return Data.shfoto[__];
    } else if (s4 == 1) {
      return Data.chfoto[__];
    } else if (s5 == 1) {
      return Data.lfoto[__];
    } else if (s6 == 1) {
      return Data.icfoto[__];
    }
  }

  len() {
    if (s1 == 1) {
      return Data.bname.length;
    } else if (s2 == 1) {
      return Data.pname.length;
    } else if (s3 == 1) {
      return Data.shname.length;
    } else if (s4 == 1) {
      return Data.chname.length;
    } else if (s5 == 1) {
      return Data.lname.length;
    } else if (s6 == 1) {
      return Data.icname.length;
    }
  }

  name(__) {
    if (s1 == 1) {
      return Data.bname[__];
    } else if (s2 == 1) {
      return Data.pname[__];
    } else if (s3 == 1) {
      return Data.shname[__];
    } else if (s4 == 1) {
      return Data.chname[__];
    } else if (s5 == 1) {
      return Data.lname[__];
    } else if (s6 == 1) {
      return Data.icname[__];
    }
  }

  price(__) {
    if (s1 == 1) {
      return Data.bprice[__];
    } else if (s2 == 1) {
      return Data.pprice[__];
    } else if (s3 == 1) {
      return Data.shprice[__];
    } else if (s4 == 1) {
      return Data.chprice[__];
    } else if (s5 == 1) {
      return Data.lprice[__];
    } else if (s6 == 1) {
      return Data.icprice[__];
    }
  }
}
