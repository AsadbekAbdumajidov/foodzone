import 'package:flutter/material.dart';
import 'package:foodzone/menu/data/cart_data.dart';
import 'package:foodzone/menu/data/wel_data.dart';

class Mal extends StatefulWidget {
  int name;
  int foto;
  int price;
  int s1 = 0, s2 = 0, s3 = 1, s4 = 0, s5 = 0, s6 = 0;
  Mal(this.name, this.foto, this.price, this.s1, this.s2, this.s3, this.s4,
      this.s5, this.s6);

  @override
  _MalState createState() => _MalState();
}

class _MalState extends State<Mal> {
  int ex1 = 0, ex2 = 0, ex3 = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: FadeInImage(
                      image: AssetImage(foto()),
                      fit: BoxFit.cover,
                      placeholder: const NetworkImage(
                          "https://icon-library.com/images/loading-gif-icon/loading-gif-icon-28.jpg"),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 15,
                    child: InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                              color: Colors.amber.shade800, width: 1),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.amber.shade800,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 15,
                    child: InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                              color: Colors.amber.shade800, width: 1),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors.amber.shade800,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/wel');
                      },
                    ),
                  )
                ],
              ),
              flex: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ListView(
                  padding: const EdgeInsets.only(top: 10.0),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name(),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.09),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.amber.shade800,
                            radius: 23,
                            child: IconButton(
                                onPressed: () {
                                  Cartt.name.add(name());
                                  Cartt.foto.add(foto());
                                  Cartt.price.add(price());
                                  Navigator.pushNamed(context, '/cart');
                                  
                                },
                                icon: const Icon(
                                    Icons.add_shopping_cart_outlined,
                                    color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, bottom: 10),
                      child: Text(
                        tag(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        Chip(
                          backgroundColor: Colors.grey.shade300,
                          label: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Text(
                              "${price()}\$",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.06,
                                  color: Colors.amber.shade900),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Text(mal(),
                              style: const TextStyle(
                                  color: Colors.black54, fontSize: 18)),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                if (ex1 == 0) {
                                  setState(() {
                                    ex1 = 1;
                                    ex2 = 0;
                                    ex3 = 0;
                                  });
                                }
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width:
                                    MediaQuery.of(context).size.height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                        color: Colors.black12, width: 1)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Example",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ex1 == 1
                                          ? Colors.amber.shade800
                                          : Colors.black,
                                      child: Center(
                                        child: ex1 == 1
                                            ? const Icon(Icons.check,
                                                color: Colors.white)
                                            : const Text("x",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                      ),
                                      radius: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (ex2 == 0) {
                                  setState(() {
                                    ex1 = 0;
                                    ex2 = 1;
                                    ex3 = 0;
                                  });
                                }
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width:
                                    MediaQuery.of(context).size.height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                        color: Colors.black12, width: 1)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Example",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ex2 == 1
                                          ? Colors.amber.shade800
                                          : Colors.black,
                                      child: Center(
                                        child: ex2 == 1
                                            ? const Icon(Icons.check,
                                                color: Colors.white)
                                            : const Text("x",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                      ),
                                      radius: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (ex3 == 0) {
                                  setState(() {
                                    ex1 = 0;
                                    ex2 = 0;
                                    ex3 = 1;
                                  });
                                }
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width:
                                    MediaQuery.of(context).size.height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                        color: Colors.black12, width: 1)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Example",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ex3 == 1
                                          ? Colors.amber.shade800
                                          : Colors.black,
                                      child: Center(
                                        child: ex3 == 1
                                            ? const Icon(Icons.check,
                                                color: Colors.white)
                                            : const Text("x",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                      ),
                                      radius: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.045,
                                  width: MediaQuery.of(context).size.height *
                                      0.045,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                        color: Colors.black12, width: 1),
                                  ),
                                  child: const Center(
                                      child: Text("-",
                                          style: TextStyle(fontSize: 24))),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child:
                                    Text("1", style: TextStyle(fontSize: 18)),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.045,
                                  width: MediaQuery.of(context).size.height *
                                      0.045,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                        color: Colors.black12, width: 1),
                                  ),
                                  child: const Center(
                                      child: Text("+",
                                          style: TextStyle(fontSize: 24))),
                                ),
                              ),
                              const Spacer(),
                              Text("${price()}\$",
                                  style: const TextStyle(fontSize: 25)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              flex: 6,
            ),
          ],
        ),
      );

  foto() {
    if (widget.s1 == 1) {
      return Data.bfoto[widget.foto].toString();
    } else if (widget.s2 == 1) {
      return Data.pfoto[widget.foto].toString();
    } else if (widget.s3 == 1) {
      return Data.shfoto[widget.foto].toString();
    } else if (widget.s4 == 1) {
      return Data.chfoto[widget.foto].toString();
    } else if (widget.s5 == 1) {
      return Data.lfoto[widget.foto].toString();
    } else if (widget.s6 == 1) {
      return Data.icfoto[widget.foto].toString();
    }
  }

  name() {
    if (widget.s1 == 1) {
      return Data.bname[widget.name].toString();
    } else if (widget.s2 == 1) {
      return Data.pname[widget.name].toString();
    } else if (widget.s3 == 1) {
      return Data.shname[widget.name].toString();
    } else if (widget.s4 == 1) {
      return Data.chname[widget.name].toString();
    } else if (widget.s5 == 1) {
      return Data.lname[widget.name].toString();
    } else if (widget.s6 == 1) {
      return Data.icname[widget.name].toString();
    }
  }

  price() {
    if (widget.s1 == 1) {
      return Data.bprice[widget.price];
    } else if (widget.s2 == 1) {
      return Data.pprice[widget.price];
    } else if (widget.s3 == 1) {
      return Data.shprice[widget.price];
    } else if (widget.s4 == 1) {
      return Data.chprice[widget.price];
    } else if (widget.s5 == 1) {
      return Data.lprice[widget.price];
    } else if (widget.s6 == 1) {
      return Data.icprice[widget.price];
    }
  }

  tag() {
    if (widget.s1 == 1) {
      return "Burger";
    } else if (widget.s2 == 1) {
      return "Pizza";
    } else if (widget.s3 == 1) {
      return "Shake";
    } else if (widget.s4 == 1) {
      return "Chicken";
    } else if (widget.s5 == 1) {
      return "Lavash";
    } else if (widget.s6 == 1) {
      return "Ice cream";
    }
  }

  mal() {
    if (widget.s1 == 1) {
      return Data.mal[0]['burger'][0];
    } else if (widget.s2 == 1) {
      return Data.mal[1]['pizza'][0];
    } else if (widget.s3 == 1) {
      return Data.mal[2]['shakes'][0];
    } else if (widget.s4 == 1) {
      return Data.mal[3]['chicken'][0];
    } else if (widget.s5 == 1) {
      return Data.mal[4]['lavash'][0];
    } else if (widget.s6 == 1) {
      return Data.mal[5]['ice'][0];
    }
  }

}
