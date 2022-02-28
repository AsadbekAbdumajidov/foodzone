// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodzone/menu/data/cart_data.dart';
import 'package:foodzone/menu/data/wel_data.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _formKey = GlobalKey<FormState>();
  final _search = TextEditingController();
  List<Data> sum = List.generate(10, (__) => Data(s: 0));

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/menu');
                        },
                        icon: Icon(
                          Icons.menu_open_sharp,
                          color: Colors.amber.shade800,
                          size: 35,
                        )),
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
                        Text("Welcome to",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 20)),
                        Text("FOODIZM",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 35)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.transparent,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _search,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusColor: Colors.grey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            contentPadding:
                                const EdgeInsets.only(left: 20, bottom: 20),
                            labelText: "Search",
                            hintText: "Search",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _search.clear();
                                  setState(
                                    () {},
                                  );
                                },
                                icon: const Icon(Icons.search)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                              borderSide:
                                  BorderSide(color: Colors.cyan.shade800),
                            ),
                          ),
                          validator: (v) {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Row(
                  children: const [
                    Text("Categories",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                  ],
                ),
              ),
              Builder_bir(context),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Row(
                  children: const [
                    Text("National foods",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                  ],
                ),
              ),
              builder_ikki(context),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Row(
                  children: const [
                    Text("Example foods",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                  ],
                ),
              ),
              example_builder(context),
            ],
          ),
        ),
      );

  Container example_builder(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: double.infinity,
      color: Colors.transparent,
      child: GridView.builder(
        itemCount: Data.mTaomfoto.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: MediaQuery.of(context).size.width * 0.7,
          crossAxisCount: 1,
        ),
        itemBuilder: (_, __) => Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 10, right: 5, left: 10, bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black45, width: 2),
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 12,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.652,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(Data.mTaomfoto[__]),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
              ),
            ),
            Positioned(
              bottom: 47,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("Example national cuisine: ",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                      Text(Data.name[__],
                          style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "${Data.haqNarx[__]}\$",
                      style: TextStyle(
                          color: Colors.amber.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 12,
              right: 7,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.amber.shade900,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(Data.chegNarx[__],
                          style: const TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16)),
                      const Text("%",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.27,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: InkWell(
                                onTap: () {
                                  if (sum[__].s == 0) {
                                    setState(() {});
                                  } else {
                                    sum[__].s -= 1;
                                    setState(() {});
                                  }
                                },
                                child: const Icon(Icons.remove,
                                    color: Colors.black, size: 20))),
                        Text("${sum[__].s}"),
                        InkWell(
                            onTap: () {
                              setState(
                                () {
                                  sum[__].s += 1;
                                },
                              );
                            },
                            child: const Icon(Icons.add,
                                color: Colors.black, size: 20)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.032,
                      width: MediaQuery.of(context).size.width * 0.27,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade600,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                          child: Text("Add to cart",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container builder_ikki(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: double.infinity,
      color: Colors.transparent,
      child: GridView.builder(
        itemCount: Data.mTaomfoto.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: MediaQuery.of(context).size.width * 0.7,
          crossAxisCount: 1,
        ),
        itemBuilder: (_, __) => Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 10, right: 5, left: 10, bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black45, width: 2),
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 12,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.652,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(Data.mTaomfoto[__]),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
              ),
            ),
            Positioned(
              bottom: 47,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("Uzbek national cuisine: ",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                      Text(Data.name[__],
                          style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "${Data.haqNarx[__]}\$",
                      style: TextStyle(
                          color: Colors.amber.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 12,
              right: 7,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.amber.shade900,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(Data.chegNarx[__],
                          style: const TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16)),
                      const Text("%",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.27,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: InkWell(
                                onTap: () {
                                  if (sum[__].s == 0) {
                                    setState(() {});
                                  } else {
                                    sum[__].s -= 1;
                                    setState(() {});
                                  }
                                },
                                child: const Icon(Icons.remove,
                                    color: Colors.black, size: 20))),
                        Text("${sum[__].s}"),
                        InkWell(
                            onTap: () {
                              setState(
                                () {
                                  sum[__].s += 1;
                                },
                              );
                            },
                            child: const Icon(Icons.add,
                                color: Colors.black, size: 20)),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Cartt.name.add(Data.name[__]);
                      Cartt.price.add(Data.haqNarx[__]);
                      Cartt.foto.add(Data.mTaomfoto[__]);
                      showToast();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.032,
                        width: MediaQuery.of(context).size.width * 0.27,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade600,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Center(
                            child: Text("Add to cart",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showToast() {
    return Fluttertoast.showToast(
      msg: "The product was added to the cart.",
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 12,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 25,
    );
  }

  Container Builder_bir(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      color: Colors.transparent,
      child: GridView.builder(
        itemCount: Data.data.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: MediaQuery.of(context).size.width * 0.35,
          crossAxisCount: 1,
        ),
        itemBuilder: (_, __) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/menu');
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 8, right: 8, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Data.rang[__],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                ),
              ),
              Positioned(
                top: 10,
                left: 26,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black87,
                      radius: 42,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(Data.data[__]),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 30,
                child: Center(
                    child: Text(
                  Data.tag[__],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
