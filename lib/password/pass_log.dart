import 'package:flutter/material.dart';

class PassLog extends StatefulWidget {
  const PassLog({Key? key}) : super(key: key);

  @override
  _PassLogState createState() => _PassLogState();
}

class _PassLogState extends State<PassLog> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
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
                          image: AssetImage("assets/images/pass_log.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  right: 30,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.38,
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
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.height * 0.06,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/person.png"))),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text("WELCOME TO FOODIZM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/pass');
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              border: Border.all(color: Colors.green, width: 2),
                            ),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 77),
                                  child: Text(
                                    "Password",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 16,
                                  child: Icon(
                                    Icons.lock_clock_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              border: Border.all(
                                  color: Colors.blue.shade800, width: 2),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 75.8),
                                  child: Text(
                                    "Facebook",
                                    style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontSize: 18),
                                  ),
                                ),
                                Icon(
                                  Icons.facebook,
                                  color: Colors.blue.shade800,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/log');
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              border: Border.all(
                                  color: Colors.red.shade800, width: 2),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 88.7),
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                        color: Colors.red.shade800,
                                        fontSize: 18),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.red.shade800,
                                  radius: 16,
                                  child: const Icon(
                                    Icons.g_mobiledata_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
