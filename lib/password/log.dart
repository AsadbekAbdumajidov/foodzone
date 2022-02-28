import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  final _formKey = GlobalKey<FormState>();
  final _login = TextEditingController(text: "@");
  String haqLogin = "@asadbek";
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 1,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  Positioned(
                    top: 1,
                    left: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/log.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    right: 30,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.82,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          border: Border.all(color: Colors.black38, width: 1),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/person.png"))),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text("Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30)),
                            ),
                            const Text("Personal Enter your login.",
                                style: TextStyle(fontSize: 20)),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Text(
                                  "Forgot your login? \nGo back, you can log in with the code",
                                  style: TextStyle(color: Colors.black54)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, right: 10),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.16,
                                width: MediaQuery.of(context).size.width * 0.8,
                                color: Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 10),
                                  child: Form(
                                    key: _formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        TextFormField(
                                          controller: _login,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    left: 40, bottom: 30),
                                            labelText: "Login",
                                            hintText: "@gmail.com",
                                            errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(80),
                                                ),
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.red.shade800)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(50)),
                                              borderSide: BorderSide(
                                                  color: Colors.cyan.shade800),
                                            ),
                                          ),
                                          validator: (v) {
                                            if (_login.text != haqLogin) {
                                              return "Email error included";
                                            }
                                          },
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/pasLog');
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.3,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(40),
                                                      ),
                                                      border: Border.all(
                                                          color: Colors
                                                              .amber.shade800,
                                                          width: 2),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Go Back",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .amber.shade800,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    setState(() {});
                                                    _login.clear();
                                                    Navigator.popAndPushNamed(
                                                        context, '/wel');
                                                  }
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.3,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(40),
                                                      ),
                                                      border: Border.all(
                                                          color: Colors
                                                              .amber.shade900,
                                                          width: 2),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Confirmation",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .amber.shade900,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
